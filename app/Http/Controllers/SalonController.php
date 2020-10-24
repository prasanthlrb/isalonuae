<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\review;
use App\area;
use App\User;
use App\service;
use App\service_time;
use App\salon_service;
use App\push_notification;
use App\salon_password;
use App\salon_package;
use App\used_package;
use Hash;
use DB;
use Mail;

class SalonController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function viewSalon($id){
        $salon_id = $id;
        $salon = User::find($id);
        $salon_worker = User::where('id',$id)->where('role_id','!=','admin')->get();
        $all_salon = User::all();
        $review = review::all();
        $service = service::all();
        $service_time = service_time::where('salon_id',$id)->get();
        $salon_service = salon_service::where('salon_id',$id)->get();
        return view('admin.view_salon',compact('salon','all_salon','service_time','salon_service','service','salon_id','review','salon_worker'));
    }

    public function saveSalon(Request $request){
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
        $salon->busisness_type = $request->busisness_type;
        $salon->name = $request->name;
        $salon->email = $request->email;
        $salon->phone = $request->phone;
        // $salon->password = Hash::make($request->password);
        $salon->salon_name = $request->salon_name;
        $salon->nationality = $request->nationality;
        $salon->salon_id = $request->salon_id;
        $salon->emirates_id = $request->emirates_id;
        $salon->passport_number = $request->passport_number;
        $salon->city = $request->city;
        $salon->area = $request->area;
        $salon->address = $request->address;
        $salon->salon_package = $request->salon_package;
        $salon->salon_commission = $request->salon_commission;
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


        $salon_package = salon_package::find($salon->salon_package);
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

        $salon_update = User::find($salon->id);
        $salon_update->used_package_id = $used_package->id;
        $salon_update->active_date = date('Y-m-d');
        $salon_update->expiry_date = $expiry_date;
        $salon_update->remind_date = $remind_date;
        $salon_update->save();

        $all = $salon_password::find($salon_password->id);
        Mail::send('mail.salon_send_mail',compact('all'),function($message) use($all){
            $message->to($all['email'])->subject('Create your Own Password');
            $message->from('aravind.0216@gmail.com','I-Salon Website');
        });

        return response()->json('successfully save'); 
    }

    public function updateSalon(Request $request){
        $request->validate([
            'email'=>'required|unique:users,email,'.$request->id,
            'name'=> 'required',
            'city'=>'required',
            //'area'=>'required',
            'address'=>'required',
        ]);

        $salon = User::find($request->id);
        $salon->busisness_type = $request->busisness_type;
        $salon->name = $request->name;
        $salon->email = $request->email;
        $salon->phone = $request->phone;
     //    if($request->password != ''){
     //    $salon->password = Hash::make($request->password);
        // }
        $salon->city = $request->city;
        $salon->area = $request->area;
        $salon->address = $request->address;
        $salon->salon_name = $request->salon_name;
        $salon->nationality = $request->nationality;
        $salon->salon_id = $request->salon_id;
        $salon->emirates_id = $request->emirates_id;
        $salon->passport_number = $request->passport_number;
        //$salon->salon_package = $request->salon_package;
        $salon->salon_commission = $request->salon_commission;
        
        
        if($request->file('trade_license')!=""){
            $old_image = "upload_files/".$salon->trade_license;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            $fileName = null;
            $image = $request->file('trade_license');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->trade_license = $fileName;
        }

        if($request->file('passport_copy')!=""){
            $old_image = "upload_files/".$salon->passport_copy;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            $fileName = null;
            $image = $request->file('passport_copy');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->passport_copy = $fileName;
        }

        if($request->file('emirated_id_copy')!=""){
            $old_image = "upload_files/".$salon->emirated_id_copy;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            $fileName = null;
            $image = $request->file('emirated_id_copy');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->emirated_id_copy = $fileName;
        }

        if($request->file('cover_image')!=""){
            $old_image = "upload_files/".$salon->cover_image;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            $fileName = null;
            $image = $request->file('cover_image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->cover_image = $fileName;
        }

        if($request->file('profile_image')!=""){
            $old_image = "upload_files/".$salon->profile_image;
            if (file_exists($old_image)) {
                @unlink($old_image);
            }
            $fileName = null;
            $image = $request->file('profile_image');
            $fileName = rand() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload_files/'), $fileName);
        $salon->profile_image = $fileName;
        }

        $salon->save();
        return response()->json('successfully update'); 
    }
    public function Salon(){
        $salon = User::where('role_id','admin')->get();
        $city = area::where('parent_id',0)->get();
        $area = area::where('parent_id','!=',0)->get();
        $salon_package = salon_package::all();
        return view('admin.salon',compact('salon','salon_package','city','area'));
    }

    public function editSalon($id){
        $salon = User::find($id);
        return response()->json($salon); 
    }
    
    public function deleteSalon($id){
        $salon = User::find($id);
        $old_image = "upload_files/".$salon->trade_license;
        if (file_exists($old_image)) {
            @unlink($old_image);
        }
        $salon->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }



    public function saveAddService(Request $request){
        $salon_service = new salon_service;
        $salon_service->salon_id = $request->salon_id;
        $salon_service->service_id = $request->service_id;
        $salon_service->price = $request->price;
        $salon_service->duration = $request->duration;
        $salon_service->save();

        return response()->json('successfully save'); 
    }
    public function updateAddService(Request $request){
        $salon_service = salon_service::find($request->id);
        $salon_service->salon_id = $request->salon_id;
        $salon_service->service_id = $request->service_id;
        $salon_service->price = $request->price;
        $salon_service->duration = $request->duration;
        $salon_service->save();
        return response()->json('successfully update'); 
    }

    public function editAddService($id){
        $salon_service = salon_service::find($id);
        return response()->json($salon_service); 
    }
    
    public function deleteAddService($id){
        $salon_service = salon_service::find($id);
        $salon_service->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }

    public function updateTime(Request $request){

        for ($x=0; $x<count($_POST['timing_id']); $x++) 
        {
            $service_time = service_time::find($_POST['timing_id'][$x]);
            $service_time->open_time = $_POST['open_time'][$x];
            $service_time->close_time = $_POST['close_time'][$x];
            $service_time->status = $_POST['status'][$x];
            $service_time->save();
        }

        return response()->json('Successfully Update'); 
    }

    public function updateLocation(Request $request){
        $salon = User::find($request->up_salon_id);
        $salon->latitude = $request->latitude;
        $salon->longitude = $request->longitude;
        $salon->save();
        return response()->json('Successfully Update'); 
    }

    public function salonNotification(){
        $salon_push_notification = push_notification::all();
        $salon = User::all();
        return view('admin.salon_notification',compact('salon_push_notification','salon'));
    }

    public function updateSalonNotification($id,$status){
        $push_notification = push_notification::find($id);
        $push_notification->status = $status;
        $push_notification->save();
        return response()->json(['message'=>'Successfully Update'],200); 
    }


    public function getPackagePlan($id){ 
    
    $salon = User::find($id);
    
    $data = salon_package::all();

$output ='';
foreach ($data as $key => $value) {
    if($value->id == $salon->salon_package){
        $output .= '<input checked type="radio" name="upgrade_plan" id="'.$value->id.'" value="'.$value->id.'"><label class="four col" for="'.$value->id.'">'.$value->package_name.'</label>';
    }
    else{
        $output .= '<input  type="radio" name="upgrade_plan" id="'.$value->id.'" value="'.$value->id.'"><label class="four col" for="'.$value->id.'">'.$value->package_name.'</label>';
    }

}
      
      echo $output;
      
    }


    public function updatePlan(Request $request){

        $salon_package = salon_package::find($request->upgrade_plan);
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
        $used_package->package_id = $request->upgrade_plan;
        $used_package->active_date = date('Y-m-d');
        $used_package->expiry_date = $expiry_date;
        $used_package->remind_date = $remind_date;
        $used_package->save();

        $salon_update = User::find($request->id);
        $salon_update->salon_package = $request->upgrade_plan;
        $salon_update->used_package_id = $used_package->id;
        $salon_update->active_date = date('Y-m-d');
        $salon_update->expiry_date = $expiry_date;
        $salon_update->remind_date = $remind_date;
        $salon_update->save();

        return response()->json('successfully save'); 
    }


}
