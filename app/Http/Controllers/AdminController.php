<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\settlement_period;
use App\admin;
use App\settings;
use App\User;
use App\customer;
use App\role;
use Hash;
use session;
use Auth;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function dashboard(){
        return view('admin.dashboard');
    }

    public function appTerms(){
        $data = settings::first();
        return view('admin.app_terms',compact('data'));
    }

    public function updateAppTerms(Request $request){
        $settings = settings::first();
        $settings->app_terms_english = $request->app_terms_english;
        $settings->app_terms_arabic = $request->app_terms_arabic;
        $settings->save();
        return back();
    }

    public function appPrivacy(){
        $data = settings::first();
        return view('admin.app_privacy',compact('data'));
    }

    public function updateAppPrivacy(Request $request){
        $settings = settings::first();
        $settings->app_about_english = $request->app_about_english;
        $settings->app_about_arabic = $request->app_about_arabic;
        $settings->save();
        return back();
    }

    public function viewUser($id){
        $admin = admin::find($id);
        return view('admin.changepassword',compact('admin'));
    }

    public function changePassword(Request $request){
        $request->validate([
            'oldpassword' => 'required',
            'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6'
        ]);
        
        $hashedPassword = Auth::guard('admin')->user()->password;
 
        if (\Hash::check($request->oldpassword , $hashedPassword )) {
 
            if (!\Hash::check($request->password , $hashedPassword)) {
 
                $admin = admin::find($request->id);
                $admin->password = Hash::make($request->password);
                $admin->save();
 
              session()->flash('message','password updated successfully');
              return redirect()->back();
            }
 
            else{
                session()->flash('message','new password can not be the old password!');
                  return redirect()->back();
                }
 
           }
 
        else{
            session()->flash('message','old password doesnt matched ');
               return redirect()->back();
        }
 
    }


    public function getSettlementPeriod(){
        $data = settlement_period::first();
        return view('admin.settlement_period',compact('data'));
    }

    public function updateSettlementPeriod(Request $request){
        $settlement_period = settlement_period::find($request->id);
        $settlement_period->settlement_period = $request->settlement_period;
        $settlement_period->settlement_amount = $request->settlement_amount;
        $settlement_period->save();
        return back(); 
    }

    public function saveUser(Request $request){
        $request->validate([
            'name'=>'required',
            'role_id'=> 'required',
            'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6'
        ]);

        $admin = new admin;
        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        $admin->role_id = $request->role_id;
        $admin->password = Hash::make($request->password);
        $admin->save();
        return response()->json('successfully save'); 
    }
    public function updateUser(Request $request){
        $request->validate([
            'name'=> 'required',
            'role_id'=> 'required',
            'password' => 'min:6|nullable|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'nullable|min:6'
        ]);

        $admin = admin::find($request->id);
        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->phone = $request->phone;
        $admin->role_id = $request->role_id;
        if($request->password != ''){
        $admin->password = Hash::make($request->password);
    	}
        $admin->save();
        return response()->json('successfully update'); 
    }

    public function User(){
        $user = admin::all();
        $role = role::all();
        return view('admin.user',compact('user','role'));
    }

    public function editUser($id){
        $user = admin::find($id);
        return response()->json($user); 
    }
    
    public function deleteUser($id){
        $user = admin::find($id);
        $user->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }
}
