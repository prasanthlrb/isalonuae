<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\new_service;
use Auth;

class ServiceController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function saveService(Request $request){
        $request->validate([
            'service_name'=>'required',
        ]);

        $new_service = new new_service;
        $new_service->service_name = $request->service_name;
        $new_service->category = $request->category;
        $new_service->remark = $request->remark;
        $new_service->salon_id = Auth::user()->user_id;
        $new_service->save();
        return response()->json('successfully save'); 
    }
    
    public function updateService(Request $request){
        $request->validate([
            'service_name'=> 'required',
        ]);
        
        $new_service = new_service::find($request->id);
        $new_service->service_name = $request->service_name;
        $new_service->category = $request->category;
        $new_service->remark = $request->remark;
        $new_service->save();
        return response()->json('successfully update'); 
    }

    public function service(){
        $service = new_service::where('salon_id',Auth::user()->user_id)->get();
        return view('vendor.service',compact('service'));
    }
    
    public function editService($id){
        $service = new_service::find($id);
        return response()->json($service); 
    }
    
    public function deleteService($id){
        $service = new_service::find($id);
        $service->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }
}
