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
use App\salon_package;
use App\used_package;
use App\country;
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
        $country = country::all();
        return view('pages.salon_register',compact('city','area','terms','country'));
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
        $salon->country_id = $request->country_id;
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

        $salon_package = salon_package::find(1);
        $expiry_date = '';
        if($salon_package->validity == '1'){
            $expiry_days = $salon_package->validity_count;
            $remind_days = $salon_package->validity_count - $salon_package->package_renewal_remember_days;
            $expiry_date = date('Y-m-d', strtotime("+".$expiry_days." days"));
            $remind_date = date('Y-m-d', strtotime("+".$remind_days." days"));
        }
        else{
            $expiry_days = $salon_package->validity_count * 30;
            $remind_days = $expiry_days - $salon_package->package_renewal_remember_days;
            $expiry_date = date('Y-m-d', strtotime("+".$expiry_days." days"));
            $remind_date = date('Y-m-d', strtotime("+".$remind_days." days"));
        }

        $used_package = new used_package;
        $used_package->package_id = $salon->salon_package;
        $used_package->active_date = date('Y-m-d');
        $used_package->expiry_date = $expiry_date;
        $used_package->remind_date = $remind_date;
        $used_package->save();

        $all = $salon_password::find($salon_password->id);
        Mail::send('mail.salon_send_mail',compact('all'),function($message) use($all){
            $message->to($all['email'])->subject('Create your Own Password');
            $message->from('contact@lrbinfotech.com','I-Salon Website');
        });

        $this->contractSendMail($salon->id);
        
        return response()->json('successfully save'); 
    }

    public function SalonBasicValidate(Request $request){
        $country = country::find($request->country_id);
        $phone_count=0;
        if(!empty($country)){
            $phone_count = $country->phone_count;
        }
        $this->validate($request, [
            'email'=> 'required|email|unique:users',
            'country_id'=>'required',
            'phone'=> 'required|numeric|digits:'.$phone_count.'|unique:users',
            'name'=>'required',
            'trade_license_no'=>'required',
            'vat_certificate_no'=>'required',
            'busisness_type'=>'required',
            'cover_image' => 'required|mimes:jpeg,jpg,png,pdf|max:1000', // max 1000kb
            'profile_image' => 'required|mimes:jpeg,jpg,png,pdf|max:1000', // max 1000kb
            'passport_copy' => 'required|mimes:jpeg,jpg,png,pdf|max:1000', // max 1000kb
            'emirated_id_copy' => 'required|mimes:jpeg,jpg,png,pdf|max:1000', // max 1000kb
          ],[
            'country_id.required' => 'Nationality Field is required',
            'name.required' => 'Owner Name Field is required',
            'cover_image.mimes' => 'Only jpeg, png and jpg images are allowed',
            'cover_image.max' => 'Sorry! Maximum allowed size for an image is 1MB',
            'cover_image.required' => 'Cover Image Field is Required',
            'profile_image.mimes' => 'Only jpeg, png and jpg images are allowed',
            'profile_image.max' => 'Sorry! Maximum allowed size for an image is 1MB',
            'profile_image.required' => 'Profile Image Field is Required',
            'passport_copy.mimes' => 'Only jpeg, png and jpg images are allowed',
            'passport_copy.max' => 'Sorry! Maximum allowed size for an image is 1MB',
            'passport_copy.required' => 'Passport ID Proof  Field is Required',
            'emirated_id_copy.mimes' => 'Only jpeg, png and jpg images are allowed',
            'emirated_id_copy.max' => 'Sorry! Maximum allowed size for an image is 1MB',
            'emirated_id_copy.required' => 'Emirated ID Proof Field is Required',
        ]);
        
        return response()->json(true); 
        //return response()->json(['error' => false, 'success' => true]);
    }

    public function SalonContactValidate(Request $request){
        $request->validate([
            'city'=>'required',
            //'nationality'=>'required',
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

    private function contractSendMail($id){
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
