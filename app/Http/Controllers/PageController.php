<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\area;
use App\terms_and_condition;
use App\review;
use App\User;
use App\service;
use App\service_time;
use App\salon_service;
use App\salon_push_notification;
use App\salon_password;
use App\customer_password;
use App\customer;
use Hash;
use DB;
use Mail;
use PDF;
use App;

class PageController extends Controller
{
public function send_sms($phone,$msg)
{
  $requestParams = array(
    //'Unicode' => '0',
    //'route_id' => '2',
    'datetime' => '2020-09-27',
    'username' => 'isalonuae',
    'password' => 'Ms5sbqBxif',
    'senderid' => 'Smart Msg',
    'type' => 'text',
    'to' => $phone,
    'text' => $msg
  );
  
  //merge API url and parameters
  $apiUrl = 'https://smartsmsgateway.com/api/api_http.php?';
  foreach($requestParams as $key => $val){
      $apiUrl .= $key.'='.urlencode($val).'&';
  }
  $apiUrl = rtrim($apiUrl, "&");

  //API call
  $ch = curl_init();
  curl_setopt($ch, CURLOPT_URL, $apiUrl);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

  curl_exec($ch);
  curl_close($ch);
}

	public function SalonRegister(){
		$city = area::where('parent_id',0)->get();
        $area = area::where('parent_id','!=',0)->get();
        $terms = terms_and_condition::first();
        return view('pages.salon_register',compact('city','area','terms'));
	}
    public function saveSalonRegister(Request $request){
        $request->validate([
            'email'=> 'required|unique:users',
            'name'=>'required',
            'city'=>'required',
            //'area'=>'required',
            'address'=>'required',
        ]);

        //image upload
        $fileName = null;
        if($request->file('trade_license')!=""){
            $image = $request->file('trade_license');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        }

        $salon = new User;
        $salon->date = date('Y-m-d');
        $salon->busisness_type = $request->busisness_type;
        $salon->name = $request->name;
        $salon->email = $request->email;
        $salon->phone = $request->phone;
        // $salon->password = Hash::make($request->password);
        $salon->salon_name = $request->salon_name;
        $salon->salon_id = $request->salon_id;
        $salon->nationality = $request->nationality;
        $salon->emirates_id = $request->emirates_id;
        $salon->trade_license_no = $request->trade_license_no;
        $salon->vat_certificate_no = $request->vat_certificate_no;
        $salon->passport_number = $request->passport_number;
        //$salon->member_license = $request->member_license;
        $salon->salon_commission = $request->salon_commission;
        $salon->city = $request->city;
        $salon->latitude = $request->latitude;
        $salon->longitude = $request->longitude;
        $salon->address = $request->address;
        $salon->trade_license = $fileName;
        if($request->file('passport_copy')!=""){
            $fileName = null;
            $image = $request->file('passport_copy');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->passport_copy = $fileName;
        }
        if($request->file('emirated_id_copy')!=""){
            $fileName = null;
            $image = $request->file('emirated_id_copy');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->emirated_id_copy = $fileName;
        }
        if($request->file('cover_image')!=""){
            $fileName = null;
            $image = $request->file('cover_image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->cover_image = $fileName;
        }
        if($request->file('profile_image')!=""){
            $fileName = null;
            $image = $request->file('profile_image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->profile_image = $fileName;
        }
        $salon->signature_data = $request->imgData;
        $salon->save();

        $user = User::find($salon->id);
        $user->role_id = 'admin';
        $user->user_id = $salon->id;
        $user->save();

        $days = array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
            for ($i = 0; $i < 7; $i++) {
                $service_time = new service_time;
                $service_time->salon_id = $salon->id;
                $service_time->days = $days[$i];
                $service_time->save();
            }

        $salon_password = new salon_password;
        $salon_password->date = date('Y-m-d');
        $salon_password->end_date = date('Y-m-d', strtotime("+14 days"));
        $salon_password->salon_id = $salon->id;
        $salon_password->salon_name = $salon->salon_name;
        $salon_password->owner_name = $salon->name;
        $salon_password->email = $salon->email;
        $salon_password->save();

        $all = $salon_password::find($salon_password->id);
        Mail::send('mail.salon_send_mail',compact('all'),function($message) use($all){
            $message->to($all['email'])->subject('Create your Own Password');
            $message->from('contact@lrbinfotech.com','I-Salon Website');
        });

        $this->contractSendMail($salon->id);
        
        return response()->json('successfully save'); 
    }

    public function SalonBasicValidate(Request $request){
        $request->validate([
            'email'=> 'required|email|unique:users',
            'phone'=> 'required|numeric|digits:9|unique:users',
            'name'=>'required',
            'trade_license_no'=>'required',
            'vat_certificate_no'=>'required',
            'busisness_type'=>'required',
            'cover_image'=>'required',
            'profile_image'=>'required',
            'passport_copy'=>'required',
            'emirated_id_copy'=>'required',
        ]);
        
        return response()->json(true); 
        //return response()->json(['error' => false, 'success' => true]);
    }

    public function SalonContactValidate(Request $request){
        $request->validate([
            'city'=>'required',
            'nationality'=>'required',
            'address'=>'required',
        ]);
        
        return response()->json(true); 
        //return response()->json(['error' => false, 'success' => true]);
    }

    public function salonCreatePassword($id){
        $salon = salon_password::find($id);
        return view('pages.salon_new_password',compact('salon','id'));
    }

    public function salonUpdatePassword(Request $request){
        $request->validate([
            'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6'
        ]);

        $salon = User::find($request->salon_id);
        $salon->password = Hash::make($request->password);
        $salon->save();

        $salon_password = salon_password::find($request->id);
        $salon_password->status = 1;
        $salon_password->save();
        
        return response()->json('successfully save'); 
    }


    public function customerCreatePassword($id){
        $customer = customer_password::find($id);
        return view('pages.customer_new_password',compact('customer','id'));
    }

    public function customerUpdatePassword(Request $request){
        $request->validate([
            'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6'
        ]);

        $customer = customer::find($request->customer_id);
        $customer->password = Hash::make($request->password);
        $customer->save();

        $customer_password = customer_password::find($request->id);
        $customer_password->status = 1;
        $customer_password->save();
        
        return response()->json('successfully save'); 
    }

    public function updateLogin(Request $request){
        $salon = User::find($request->id);
        $salon->signature_data = $request->data;
        $salon->login_status = 1;
        $salon->save();

        return response()->json(['message'=>'Successfully Update'],200); 
    }


    public function getArea($id){ 
    
    $data = area::where('parent_id',$id)->get();

        $output ='<option value="">SELECT</option>';
        foreach ($data as $key => $value) {
            
        $output .= '<option value="'.$value->id.'">'.$value->area.'</option>';
        }
      echo $output;
      
    }

    public function contractSendMail($id){
        $user = User::find($id);
        //$pdf = PDF::loadView('pdf.contract',compact('user'), [], ['mode' => 'utf-8']);
        
        // $view = view('pdf.contract',compact('user'))->render();
        // $pdf = \App::make('dompdf.wrapper');
        // $pdf->loadHTML($view);
        // $pdf->setPaper('legal', 'portrait');
        // $pdf->stream('invoice');

        $customPaper = array(0,0,720,1440);
        $pdf = PDF::loadView('pdf.contract', compact('user'))->setPaper($customPaper, 'portrait');


        try{
            Mail::send('mail.contract', compact('user'), function($message)use($user,$pdf) {
            $message->to($user->email)->subject('I-Salon Website Contract');
            //$message->cc('info@isalonuae.com')->subject('I-Salon Website Contract');
            $message->from('contact@lrbinfotech.com','I-Salon Website');
            $message->attachData($pdf->output(), 'contract'.$user->id.'.pdf');
            });
        }catch(JWTException $exception){
            $this->serverstatuscode = "0";
            $this->serverstatusdes = $exception->getMessage();
        }
        if (Mail::failures()) {
             $this->statusdesc  =   "Error sending mail";
             $this->statuscode  =   "0";
        }else{
           $this->statusdesc  =   "Mail sent Succesfully";
           $this->statuscode  =   "1";
        }
        //return response()->json($this);
    }


}
