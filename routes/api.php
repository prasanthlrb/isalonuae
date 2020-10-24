<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/otp-check', 'ApiController@getApiOtpCheck');
//customer
Route::post('/create-customer', 'ApiController@createCustomer');
Route::post('/verify-customer', 'ApiController@verifyCustomer');
Route::post('/login', 'ApiController@customerLogin');
Route::post('/update-customer', 'ApiController@updateCustomer');
Route::get('/edit-customer/{id}', 'ApiController@editCustomer');

Route::post('/otp-resend', 'ApiController@getApiOtpResend');

Route::post('/forget-password', 'ApiController@forgetPassword');
Route::post('/reset-password', 'ApiController@resetPassword');

Route::get('/get-slider', 'ApiController@getApiSlider');
Route::get('/get-category', 'ApiController@getApiCategory');
Route::get('/get-service', 'ApiController@getApiServices');
Route::get('/get-city', 'ApiController@getApiCity');

Route::get('/get-terms/{id}', 'ApiController@getApiTerms');
Route::get('/get-privacy/{id}', 'ApiController@getApiPrivacy');

Route::get('/get-salon-details/{id}/{id1}', 'ApiController@getApiSalonDetails');
Route::get('/get-spa-details/{id}/{id1}', 'ApiController@getApiSpaDetails');
Route::get('/get-makeup-details/{id}/{id1}', 'ApiController@getApiMakeupDetails');
Route::get('/get-beauty-details/{id}/{id1}', 'ApiController@getApiBeautyDetails');
Route::get('/get-home-details/{id}/{id1}', 'ApiController@getApiHomeDetails');

Route::get('/get-service-details/{id}/{id1}', 'ApiController@getApiServiceDetails');

Route::get('/get-shop-name/{id}', 'ApiController@getApiShopName');

Route::get('/get-all-shop/{id}', 'ApiController@getApiAllShop');

Route::post('/profile-update', 'ApiController@profileUpdate');
Route::post('/change-password', 'ApiController@changePassword');

Route::post('/save-address', 'ApiController@saveAddress');
Route::post('/update-address', 'ApiController@updateAddress');
Route::post('/delete-address', 'ApiController@deleteAddress');
Route::get('/get-address/{id}', 'ApiController@getAddress');


Route::get('/get-shop-details/{id}', 'ApiController@getShopDetails');
Route::get('/get-shop-workers/{id}', 'ApiController@getShopWorkers');
Route::get('/get-shop-gallery/{id}', 'ApiController@getShopGallery');
Route::get('/get-shop-review/{id}', 'ApiController@getShopReview');
Route::get('/get-shop-hours/{id}', 'ApiController@getShopHours');
Route::get('/get-shop-services/{id}', 'ApiController@getShopServices');

Route::get('/get-shop-weeks/{id}', 'ApiController@getShopWeeks');
Route::get('/get-shop-booking/{id}/{id1}', 'ApiController@getShopBooking');

Route::post('/get-shop-near', 'ApiController@getShopNear');

Route::post('/save-booking', 'ApiController@saveBooking');
Route::post('/save-booking-item', 'ApiController@saveBookingItem');
//appoinment done
Route::get('/get-booking/{id}', 'ApiController@getBooking');
//booking process
Route::get('/get-booking-item/{id}', 'ApiController@getBookingItem');
Route::get('/get-booking-transaction/{id}', 'ApiController@getBookingTransaction');

Route::get('/get-package', 'ApiController@getPackage');
Route::get('/get-package-services/{id}', 'ApiController@getPackageServices');

Route::get('/coupon-code-apply/{customer_id}/{code}/{value}/{salon_id}', 'ApiController@couponModule');

Route::get('/get-push-notification', 'ApiController@getPushNotification');



Route::POST('/get-access-token', 'PaymentController@getAccessToken');
Route::POST('/create-payment-order', 'PaymentController@createPaymentOrder');
Route::POST('/payment-pay', 'PaymentController@paymentPay');
Route::get('/get-retrive-payment/{id}', 'ApiController@getRetrivePayment');
//chat
Route::get('/get-chat-booking/{id}', 'ApiController@getChatBooking');
Route::post('/save-chat-booking', 'ApiController@saveChatBooking');
Route::get('/chat-init/{id}', 'ApiController@chatInit');

        