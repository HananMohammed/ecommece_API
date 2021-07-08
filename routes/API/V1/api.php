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

//Auth
Route::post('register', 'AuthController@register');
Route::post('login', 'AuthController@login');
//categories
Route::get('categories', 'CategoryController@index');
Route::get('categories/{id}', 'CategoryController@show');
//products
Route::get('products', 'ProductController@index');
Route::get('products/{id}', 'ProductController@show');

Route::group(['middleware' => ['auth:sanctum']], function () {
    //Auth
    Route::get('/profile', 'AuthController@profile');
    Route::post('/logout', 'AuthController@logout');
    //categories
    Route::post('categories', 'CategoryController@store');
    Route::put('categories/{id}', 'CategoryController@update');
    Route::delete('categories/{id}', 'CategoryController@destroy');
    //products
    Route::post('products', 'ProductController@store');
    Route::post('product-delivery/{id}', 'ProductController@updateStatus');
    Route::put('products/{id}', 'ProductController@update');
    Route::delete('products/{id}', 'ProductController@destroy');

    //orders
    Route::post('complete-order', 'OrderController@store');
    Route::get('get-merchant-orders', 'OrderController@getMerchantOrders');
    Route::get('get-customer-orders', 'OrderController@getCustomerOrders');
    Route::get('get-driver-orders', 'OrderController@getDriverOrders');

    Route::get('get-drivers', 'OrderController@getDrivers');
    Route::post('assign-order-to-driver', 'OrderController@assignOrdersToDelivery');
});
