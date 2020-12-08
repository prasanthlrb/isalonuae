<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\settlement_period;
use App\admin;
use App\settings;
use App\User;
use App\customer;
use App\role;
use App\booking;
use App\payments_in;
use App\payments_out;
use Hash;
use App\service;
use App\salon_service;
use session;
use Auth;
use DB;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function getBooking(){
        $booking = booking::orderBy('id','DESC')->get();
        $customer = customer::all();
        $salon = User::all();
        return view('admin.booking',compact('booking','customer','salon'));
    }

    public function dashboard(){
        $salon_count = User::where('role_id','admin')->where('status',1)->where('busisness_type',1)->count();
        $spa_count = User::where('role_id','admin')->where('status',1)->where('busisness_type',2)->count();
        $makeup_count = User::where('role_id','admin')->where('status',1)->where('busisness_type',3)->count();
        $beauty_count = User::where('role_id','admin')->where('status',1)->where('busisness_type',4)->count();
        $home_count = User::where('role_id','admin')->where('status',1)->where('busisness_type',5)->count();

        $salon_amount =DB::table('bookings as b')
        ->join('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',1)
        ->get()->sum("total");

        $spa_amount =DB::table('bookings as b')
        ->join('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',2)
        ->get()->sum("total");

        $makeup_amount =DB::table('bookings as b')
        ->join('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',3)
        ->get()->sum("total");

        $beauty_amount =DB::table('bookings as b')
        ->join('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',4)
        ->get()->sum("total");

        $home_amount =DB::table('bookings as b')
        ->join('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',5)
        ->get()->sum("total");

        $today = date('Y-m-d');
        $cfdate = date('Y-m-d',strtotime('first day of this month'));
        $cldate = date('Y-m-d',strtotime('last day of this month'));
  
        $sevendays = date('Y-m-d',strtotime("$today -7 day"));
        $thirtydays = date('Y-m-d',strtotime("$today -30 day"));
    
        $total_booking = booking::count();
        $today_booking = booking::where('date', $today)->count();
        $open_booking = booking::where('booking_status', 0)->count();
        
        $today_value = booking::where('date', $today)->get()->sum("total");
        $current_month_value = booking::whereBetween('date', [$cfdate, $cldate])->get()->sum("total");
  
        $last7days = booking::whereBetween('date', [$sevendays, $today])->get()->sum("total");
        $last30days = booking::whereBetween('date', [$thirtydays, $today])->get()->sum("total");
  
        $total_services = salon_service::count(); 

        $top_salon =DB::table('bookings as b')
        ->leftJoin('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',1)
        ->select('u.profile_image','u.salon_name','u.name','u.phone',DB::raw('SUM(b.total) as total_amount'))
        ->groupBy('u.salon_name','u.name','u.phone','u.profile_image')
        ->orderBy('total_amount', 'DESC')
        ->take(5)->get();

        $top_spa =DB::table('bookings as b')
        ->leftJoin('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',2)
        ->select('u.profile_image','u.salon_name','u.name','u.phone',DB::raw('SUM(b.total) as total_amount'))
        ->groupBy('u.salon_name','u.name','u.phone','u.profile_image')
        ->orderBy('total_amount', 'DESC')
        ->take(5)->get();

        $top_makeup =DB::table('bookings as b')
        ->leftJoin('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',3)
        ->select('u.profile_image','u.salon_name','u.name','u.phone',DB::raw('SUM(b.total) as total_amount'))
        ->groupBy('u.salon_name','u.name','u.phone','u.profile_image')
        ->orderBy('total_amount', 'DESC')
        ->take(5)->get();

        $top_beauty =DB::table('bookings as b')
        ->leftJoin('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',4)
        ->select('u.profile_image','u.salon_name','u.name','u.phone',DB::raw('SUM(b.total) as total_amount'))
        ->groupBy('u.salon_name','u.name','u.phone','u.profile_image')
        ->orderBy('total_amount', 'DESC')
        ->take(5)->get();

        $top_home =DB::table('bookings as b')
        ->leftJoin('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->where('u.busisness_type',5)
        ->select('u.profile_image','u.salon_name','u.name','u.phone',DB::raw('SUM(b.total) as total_amount'))
        ->groupBy('u.salon_name','u.name','u.phone','u.profile_image')
        ->orderBy('total_amount', 'DESC')
        ->take(5)->get();

        $top_3 =DB::table('bookings as b')
        ->whereBetween('b.date', [$cfdate, $cldate])
        ->leftJoin('users as u', 'u.id', '=', 'b.salon_id')
        ->where('u.role_id','admin')
        ->select('u.profile_image','u.salon_name','u.name','u.phone',DB::raw('SUM(b.total) as total_amount'))
        ->groupBy('u.salon_name','u.name','u.phone','u.profile_image')
        ->orderBy('total_amount', 'DESC')
        ->take(3)->get();

        $new_user = User::where('role_id','admin')->where('status',0)->get();

        return view('admin.dashboard',compact('salon_count','spa_count','makeup_count','beauty_count','home_count','total_booking','today_booking','open_booking','salon_amount','spa_amount','makeup_amount','beauty_amount','home_amount','last7days','last30days','top_salon','top_spa','top_beauty','top_makeup','top_home','top_3','new_user'));
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
        $settings->app_privacy_english = $request->app_privacy_english;
        $settings->app_privacy_arabic = $request->app_privacy_arabic;
        $settings->save();
        return back();
    }

    public function appAbout(){
        $data = settings::first();
        return view('admin.app_about',compact('data'));
    }

    public function updateAppAbout(Request $request){
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

    public function expiredSalon(){
        $user = user::all();

        $today = date('Y-m-d');
        foreach($user as $row){
            if($row->expiry_date < $today){
                $salon = User::find($row->id);
                $salon->status = 2;
                $salon->save();
            }
        }
        //return response()->json(['message'=>'Successfully Delete'],200); 
    }

    public function cashReport(){
        $booking =DB::table('bookings')
        ->where('payment_type',0)
        ->where('payment_status',1)
        ->where('status',0)
        ->select('salon_id' , DB::raw('SUM(total) as total_amount'))
        ->groupBy('salon_id')
        ->get();

        foreach($booking as $row){
            $user = User::find($row->salon_id);
            
            $user->admin_pay = $user->admin_pay + $row->total_amount;
            $user->admin_balance = ($user->admin_pay + $row->total_amount) - $user->admin_paid;
            $user->save();

            $payments_out = new payments_out;
            $payments_out->date = date('Y-m-d');
            $payments_out->salon_id = $row->salon_id;
            $payments_out->payment = $row->total_amount;
            $payments_out->save();
        }

        $booking_status = booking::where('status',0)->where('payment_type',0)->where('payment_status',1)->get();
        foreach($booking_status as $status){
            $booking_id = booking::find($status->id);
            $booking_id->status = 1;
            $booking_id->save() ;
        }
    }

    public function cardReport(){
        $booking =DB::table('bookings')
        ->where('payment_type',1)
        ->where('payment_status',1)
        ->where('status',0)
        ->select('salon_id' , DB::raw('SUM(total) as total_amount'))
        ->groupBy('salon_id')
        ->get();

        foreach($booking as $row){
            $user = User::find($row->salon_id);
            
            $user->salon_pay = $user->salon_pay + $row->total_amount;
            $user->salon_balance = ($user->salon_pay + $row->total_amount) - $user->salon_paid;
            $user->save();

            $payments_in = new payments_in;
            $payments_in->date = date('Y-m-d');
            $payments_in->salon_id = $row->salon_id;
            $payments_in->payment = $row->total_amount;
            $payments_in->save();
        }

        $booking_status = booking::where('status',0)->where('payment_type',1)->where('payment_status',1)->get();
        foreach($booking_status as $status){
            $booking_id = booking::find($status->id);
            $booking_id->status = 1;
            $booking_id->save() ;
        }
    }


}
