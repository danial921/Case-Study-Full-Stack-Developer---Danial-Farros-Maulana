<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CrudController;
use App\Http\Controllers\dashboard;

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
Route::get('/dashboard',[dashboard::class, 'index']);

Route::get('/asset', function () {return view('assets');});
Route::post('/assetsstore',[CrudController::class, 'assetstore'])->name('assetsstore');

Route::get('/product', function () {return view('product');});
Route::post('/productstore',[CrudController::class, 'productstore'])->name('productstore');

Route::get('/category', function () {return view('category');});
Route::post('/categorystore',[CrudController::class, 'categorystore'])->name('categorystore');

Route::get('/productasset', function () {return view('productasset');});
Route::post('/productassetstore',[CrudController::class, 'productassetstore'])->name('productassetstore');

Route::get('/detail-{id}',[dashboard::class,'detailproduct']);
Route::get('/cek',[CrudController::class, 'check']);