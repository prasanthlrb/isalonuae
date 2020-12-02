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
use Hash;
use App\service;
use App\salon_service;
use session;
use Auth;

class ReportController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function revenueReport(){
        $booking = booking::orderBy('id','DESC')->get();
        $customer = customer::all();
        $salon = User::all();
        return view('admin.revenue_report',compact('booking','customer','salon'));
    }

    public function settlementReport(){
        return view('admin.settlement_report');
    }
}
