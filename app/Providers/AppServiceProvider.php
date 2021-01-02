<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use DB;
use Auth;
use App\salon_role;
use App\User;
use App\role;
use App\admin;
use App\customer;
use Carbon\Carbon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        view()->composer('vendor.menu', function($view) {
            $role = array();
            if(Auth::user()->role_id != 'admin'){
            $role = salon_role::where('id',Auth::user()->role_id)->where('salon_id',Auth::user()->user_id)->first();
            }
            $view->with(compact('role'));
        });

        view()->composer('vendor.dashboard', function($view) {
            $role = array();
            if(Auth::user()->role_id != 'admin'){
            $role = salon_role::where('id',Auth::user()->role_id)->where('salon_id',Auth::user()->user_id)->first();
            }
            $view->with(compact('role'));
        });
        
        view()->composer('admin.sidebar', function($view) {
            $role = role::where('id',Auth::guard('admin')->user()->role_id)->first();
           
            $view->with(compact('role'));
        });

        view()->composer('admin.header', function($view) {
            $today = date('Y-m-d');
            $tommorrow = date('Y-m-d',strtotime("$today +1 day"));
            $sevendays = date('Y-m-d',strtotime("$today +7 day"));

            $customer = customer::whereRaw('DAYOFYEAR(curdate()) <= DAYOFYEAR(dob) AND DAYOFYEAR(curdate()) + 7 >=  dayofyear(dob)')->orderByRaw('DAYOFYEAR(dob)')->get();

            $customer_count = customer::whereRaw('DAYOFYEAR(curdate()) <= DAYOFYEAR(dob) AND DAYOFYEAR(curdate()) + 7 >=  dayofyear(dob)')->orderByRaw('DAYOFYEAR(dob)')->count();
           
            $view->with(compact('customer','customer_count'));
        });
    }   
}
