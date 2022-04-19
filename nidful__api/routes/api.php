<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\FollowController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
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


//Protected Route
Route::group(['middleware' => ['auth:sanctum']], function(){
    Route::get('user', [UserController::class, 'index'])->name('user.profile');
    Route::post('/profile/store', [ProfileController::class, 'store'])->name('store');
    Route::post('/profile/follow/{user}', [FollowController::class, 'follow'])->name('follow');
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
            //Product Route
    Route::delete('/product/delete/{id}', [ProductController::class, 'destroy'])->name('product.delete');
    Route::put('/product/update/{id}', [ProductController::class, 'update'])->name('product.update');
    Route::post('/product/store',[ProductController::class, 'store'])->name('product.store');
});


//Public Route
Route::post('/register', [AuthController::class, 'register'])->name('register');
Route::post('/login', [AuthController::class, 'login'])->name('login');
        //Product Route
Route::get('/products',[ProductController::class, 'index'])->name('allproducts');
Route::get('/product/{id}',[ProductController::class, 'show'])->name('product');
Route::get('/products/search/{name}',[ProductController::class, 'search']);
