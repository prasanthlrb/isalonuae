<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\review;

class ReviewController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function Review(){
        $review = review::all();
        return view('vendor.review',compact('review'));
    }
}
