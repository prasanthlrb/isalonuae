<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalonPackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salon_packages', function (Blueprint $table) {
            $table->id();
            $table->string('package_name')->nullable();
            $table->string('price')->nullable();
            $table->string('validity')->nullable();
            $table->string('validity_count')->nullable();
            $table->string('next_renewal_discount')->nullable();
            $table->string('package_renewal_remember_days')->nullable();
            $table->string('status')->default('0');
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
        Schema::dropIfExists('salon_packages');
    }
}
