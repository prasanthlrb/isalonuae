<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsedPackagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('used_packages', function (Blueprint $table) {
            $table->id();
            $table->string('package_id')->nullable();
            $table->string('active_date')->nullable();
            $table->string('expiry_date')->nullable();
            $table->string('remind_date')->nullable();
            $table->string('staus')->default('0');
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
        Schema::dropIfExists('used_packages');
    }
}
