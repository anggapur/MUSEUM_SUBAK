<?php

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
    return redirect('login');
});
Route::get('token',function(){
	return csrf_token();
});

Route::resource('topik','topikCtrl');
Route::get('allTopiks','topikCtrl@allTopiks');
Route::get('mainTopiks','topikCtrl@mainTopiks');
Auth::routes();


Route::get('/home', 'HomeController@index')->name('home');
