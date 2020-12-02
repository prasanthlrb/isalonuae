<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\review;
use App\customer;
use Auth;

class ReviewController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function Review(){
        $review = review::where('salon_id',Auth::user()->user_id)->get();
        $customer = customer::all();
        return view('vendor.review',compact('review','customer'));
    }
}
