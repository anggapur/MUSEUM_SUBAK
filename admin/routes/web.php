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

// Topik
Route::resource('topik','topikCtrl');
Route::get('allTopiks','topikCtrl@allTopiks');
Route::get('mainTopiks','topikCtrl@mainTopiks');
Route::get('childTopiks/{id}','topikCtrl@childTopiks');
Route::any('topik/reOrderUp/{id}','topikCtrl@reOrderUp');
Route::any('topik/reOrderDown/{id}','topikCtrl@reOrderDown');
// Subtopik
Route::resource('subTopik','subTopikCtrl');
Route::get('allDetailSubTopiks/{id}','subTopikCtrl@allDetailSubTopiks');
Route::any('subTopik/reOrderUp/{id}','subTopikCtrl@reOrderUp');
Route::any('subTopik/reOrderDown/{id}','subTopikCtrl@reOrderDown');
//Kategori
Route::resource('kategori','kategoriCtrl');
Route::get('allDataKategori','kategoriCtrl@allData');
Auth::routes();
// Photo
Route::resource('photo','photoCtrl');
Route::get('getSubTopik','photoCtrl@getSubTopik');
Route::get('getKategories','photoCtrl@getKategories');
Route::get('getAllPhotos','photoCtrl@getAllPhotos');
Route::get('getPhotosByTabs/{id}','photoCtrl@getPhotosByTabs');
Route::any('photo/reOrderUp/{id}','photoCtrl@reOrderUp');
Route::any('photo/reOrderDown/{id}','photoCtrl@reOrderDown');
//video
Route::resource('video','videoCtrl');
Route::get('getSubTopikVideos','videoCtrl@getSubTopik');
Route::get('getKategoriesVideos','videoCtrl@getKategories');
Route::get('getAllVideos','videoCtrl@getAllPhotos');
Route::get('getVideosByTabs/{id}','videoCtrl@getPhotosByTabs');
Route::any('video/reOrderUp/{id}','videoCtrl@reOrderUp');
Route::any('video/reOrderDown/{id}','videoCtrl@reOrderDown');


Route::get('/home', 'HomeController@index')->name('home');
