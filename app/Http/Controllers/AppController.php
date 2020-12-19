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
use App\app_salon;
use App\app_spa;
use App\app_beauty;
use App\app_makeup;
use App\app_home;
use Hash;
use App\service;
use App\salon_service;
use session;
use Auth;
use DB;

class AppController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function AppSalon(){
        $salon = User::where('role_id','admin')->where('busisness_type',1)->where('status',1)->get();
        $app_salon =DB::table('app_salons as a')
        ->join('users as u', 'u.id', '=', 'a.salon_id')
        ->select('a.*','u.salon_name','u.name')
        ->orderBy('a.order_id','asc')
        ->get();
        return view('admin.app_salon',compact('app_salon','salon'));
    }

    public function updateAppSalon(Request $request)
    {
        foreach ($request->value as $key => $value) 
        {
            $order_id=$key+1;
            $app_salon = app_salon::find($value);
            $app_salon->order_id = $order_id;
            $app_salon->save();
        }
        return response()->json(['message'=>'Successfully Update'],200);
    }

    public function saveAppSalon(Request $request){
        $request->validate([
            'salon_id'=>'required|unique:app_salons',
        ]); 
        $count = app_salon::count();
        $app_salon = new app_salon;
        $app_salon->order_id = $count + 1;
        $app_salon->salon_id = $request->salon_id;
        $app_salon->save();
        return response()->json('successfully save'); 
    }

    public function deleteAppSalon($id){
        $app_salon = app_salon::find($id);
        $app_salon->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


    public function AppSpa(){
        $salon = User::where('role_id','admin')->where('busisness_type',2)->where('status',1)->get();
        $app_spa =DB::table('app_spas as a')
        ->join('users as u', 'u.id', '=', 'a.salon_id')
        ->select('a.*','u.salon_name','u.name')
        ->orderBy('a.order_id','asc')
        ->get();
        return view('admin.app_spa',compact('app_spa','salon'));
    }

    public function updateAppSpa(Request $request)
    {
        foreach ($request->value as $key => $value) 
        {
            $order_id=$key+1;
            $app_spa = app_spa::find($value);
            $app_spa->order_id = $order_id;
            $app_spa->save();
        }
        return response()->json(['message'=>'Successfully Update'],200);
    }

    public function saveAppSpa(Request $request){
        $request->validate([
            'salon_id'=>'required|unique:app_spas',
        ]); 
        $count = app_spa::count();
        $app_spa = new app_spa;
        $app_spa->order_id = $count + 1;
        $app_spa->salon_id = $request->salon_id;
        $app_spa->save();
        return response()->json('successfully save'); 
    }

    public function deleteAppSpa($id){
        $app_spa = app_spa::find($id);
        $app_spa->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }



    public function AppBeauty(){
        $salon = User::where('role_id','admin')->where('busisness_type',4)->where('status',1)->get();
        $app_beauty =DB::table('app_beauties as a')
        ->join('users as u', 'u.id', '=', 'a.salon_id')
        ->select('a.*','u.salon_name','u.name')
        ->orderBy('a.order_id','asc')
        ->get();
        return view('admin.app_beauty',compact('app_beauty','salon'));
    }

    public function updateAppBeauty(Request $request)
    {
        foreach ($request->value as $key => $value) 
        {
            $order_id=$key+1;
            $app_beauty = app_beauty::find($value);
            $app_beauty->order_id = $order_id;
            $app_beauty->save();
        }
        return response()->json(['message'=>'Successfully Update'],200);
    }

    public function saveAppBeauty(Request $request){
        $request->validate([
            'salon_id'=>'required|unique:app_beauties',
        ]); 
        $count = app_beauty::count();
        $app_beauty = new app_beauty;
        $app_beauty->order_id = $count + 1;
        $app_beauty->salon_id = $request->salon_id;
        $app_beauty->save();
        return response()->json('successfully save'); 
    }

    public function deleteAppBeauty($id){
        $app_beauty = app_beauty::find($id);
        $app_beauty->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }


    public function AppMakeup(){
        $salon = User::where('role_id','admin')->where('busisness_type',3)->where('status',1)->get();
        $app_makeup =DB::table('app_makeups as a')
        ->join('users as u', 'u.id', '=', 'a.salon_id')
        ->select('a.*','u.salon_name','u.name')
        ->orderBy('a.order_id','asc')
        ->get();
        return view('admin.app_makeup',compact('app_makeup','salon'));
    }

    public function updateAppMakeup(Request $request)
    {
        foreach ($request->value as $key => $value) 
        {
            $order_id=$key+1;
            $app_makeup = app_makeup::find($value);
            $app_makeup->order_id = $order_id;
            $app_makeup->save();
        }
        return response()->json(['message'=>'Successfully Update'],200);
    }

    public function saveAppMakeup(Request $request){
        $request->validate([
            'salon_id'=>'required|unique:app_makeups',
        ]); 
        $count = app_makeup::count();
        $app_makeup = new app_makeup;
        $app_makeup->order_id = $count + 1;
        $app_makeup->salon_id = $request->salon_id;
        $app_makeup->save();
        return response()->json('successfully save'); 
    }

    public function deleteAppMakeup($id){
        $app_makeup = app_makeup::find($id);
        $app_makeup->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }

    public function AppHome(){
        $salon = User::where('role_id','admin')->where('busisness_type',5)->where('status',1)->get();
        $app_home =DB::table('app_homes as a')
        ->join('users as u', 'u.id', '=', 'a.salon_id')
        ->select('a.*','u.salon_name','u.name')
        ->orderBy('a.order_id','asc')
        ->get();
        return view('admin.app_home',compact('app_home','salon'));
    }

    public function updateAppHome(Request $request)
    {
        foreach ($request->value as $key => $value) 
        {
            $order_id=$key+1;
            $app_home = app_home::find($value);
            $app_home->order_id = $order_id;
            $app_home->save();
        }
        return response()->json(['message'=>'Successfully Update'],200);
    }

    public function saveAppHome(Request $request){
        $request->validate([
            'salon_id'=>'required|unique:app_homes',
        ]); 
        $count = app_home::count();
        $app_home = new app_home;
        $app_home->order_id = $count + 1;
        $app_home->salon_id = $request->salon_id;
        $app_home->save();
        return response()->json('successfully save'); 
    }

    public function deleteAppHome($id){
        $app_home = app_home::find($id);
        $app_home->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }

}
