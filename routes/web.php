<?php

use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Address;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// #### 01.#1 - One to One relationship _ hasOne() & belongsTo() _ Laravel Eloquent Relationships
Route::get('/users-address', function () {
    $users = User::with(['address'])->latest()->get();
    return view('users',compact('users'));
    // return $users;
});
Route::get('/address-user', function () {
     $addresses = Address::with(['user'])->latest()->get();
    //  dd($addresses->first()->user);
    return view('address_user',compact('addresses'));
    // return $users;
});

// 02.#2 - One To Many relationship _ hasMany() _ Laravel Eloquent Relationships
Route::get('/tut_2', function () {
    $users = User::with(['addresses'])->latest()->get();
    return view('tut_2',compact('users'));
    // return $users;
});
