<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCouponsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->id();
            $table->string('salon_id')->nullable();
            $table->string('coupon_code');
            $table->string('description');
            $table->string('start_date');
            $table->string('end_date');
            $table->string('discount_type');
            $table->string('service_id')->nullable();
            $table->string('amount');
            $table->string('max_value')->nullable();
            $table->string('limit_per_user');
            $table->string('limit_per_coupon');
            $table->string('user_type')->nullable();
            $table->string('user_id')->nullable();
            $table->string('status')->nullable();
            $table->string('deny_remark',5000)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('coupons');
    }
}
