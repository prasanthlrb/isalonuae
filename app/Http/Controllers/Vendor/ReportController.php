<?php

namespace App\Http\Controllers\Vendor;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ReportController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function Report(){
        return view('vendor.report');
    }
}
