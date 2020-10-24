<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\area;


class AreaController extends Controller
{   
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function saveCity(Request $request){
        $request->validate([
            'area'=>'required',
        ]); 

        $area = new area;
        $area->area = $request->area;
        $area->parent_id = 0;
        $area->save();
        return response()->json('successfully save'); 
    }
    public function updateCity(Request $request){
        $request->validate([
            'area'=> 'required',
        ]);
        
        $area = area::find($request->id);
        $area->area = $request->area;
        $area->parent_id = 0;
        $area->save();
        return response()->json('successfully update'); 
    }

    public function City(){
        $area = area::where('parent_id',0)->get();
        return view('admin.city',compact('area'));
    }
    public function editCity($id){
        $area = area::find($id);
        return response()->json($area); 
    }
    
    public function deleteCity($id){
        $area = area::find($id);
        $area->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }



    public function saveArea(Request $request){
        $request->validate([
            'area'=>'required',
        ]); 

        $area = new area;
        $area->area = $request->area;
        $area->parent_id = $request->parent_id;
        $area->save();
        return response()->json('successfully save'); 
    }

    public function updateArea(Request $request){
        $request->validate([
            'area'=> 'required',
        ]);
        
        $area = area::find($request->id);
        $area->area = $request->area;
        $area->parent_id = $request->parent_id;
        $area->save();
        return response()->json('successfully update'); 
    }

    public function Area($id){
        $area = area::where('parent_id',$id)->get();
        return view('admin.area',compact('area','id'));
    }
    public function editArea($id){
        $area = area::find($id);
        return response()->json($area); 
    }
    
    public function deleteArea($id){
        $area = area::find($id);
        $area->delete();
        return response()->json(['message'=>'Successfully Delete'],200); 
    }




}
