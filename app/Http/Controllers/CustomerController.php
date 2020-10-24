<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\customer;
use App\order;
use App\service;
use App\customer_password;
use Hash;
use DB;
use Mail;


class CustomerController extends Controller
{   
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function Customer(){
        $customer = customer::all();
        return view('admin.customer',compact('customer'));
    }

    public function viewCustomerDetails($id){
         $customer_all = customer::all();
         $order = order::all();
         $service = service::all();
         $customer = customer::find($id);
        return view('admin.customer_details',compact('customer','customer_all','order','service'));
    }


    public function saveCustomer(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required',
        ]);

        $customer = new customer;
        $customer->date = date('Y-m-d');
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        $customer->save();

        if($request->password != ''){
            $cus = customer::find($customer->id);
            $cus->password = Hash::make($request->password);
            $cus->save();
        }
        else{
            $customer_password = new customer_password;
            $customer_password->date = date('Y-m-d');
            $customer_password->end_date = date('Y-m-d', strtotime("+14 days"));
            $customer_password->customer_id = $customer->id;
            $customer_password->name = $customer->name;
            $customer_password->email = $customer->email;
            $customer_password->save();

            $all = $customer_password::find($customer_password->id);
            Mail::send('mail.customer_send_mail',compact('all'),function($message) use($all){
                $message->to($all['email'])->subject('Create your Own Password');
                $message->from('aravind.0216@gmail.com','I-Salon Website');
            });
        }

        return response()->json('successfully save'); 
    }

    
    public function updateCustomer(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required',
        ]);
        
        $customer = customer::find($request->id);
        $customer->name = $request->name;
        $customer->phone = $request->phone;
        $customer->email = $request->email;
        if($request->password != ''){
        $customer->password = Hash::make($request->password);
        }
        $customer->save();

        return response()->json('successfully update'); 
    }

    public function editCustomer($id){
        $customer = customer::find($id);
        return response()->json($customer); 
    }
    
    public function deleteCustomer($id){
        $customer = customer::find($id);
        $customer->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


}
