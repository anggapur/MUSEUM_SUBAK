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

Auth::routes();
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
Route::any('subTopik/getDetail/{id}','subTopikCtrl@getDetail');
Route::any('subTopik/hapusMedia/{id}','subTopikCtrl@hapusMedia');
//Kategori
Route::resource('kategori','kategoriCtrl');
Route::get('allDataKategori','kategoriCtrl@allData');
Route::any('kategori/getPhotoGallery/{id_topik}','kategoriCtrl@getPhotoGallery');
Route::any('kategori/getVideoGallery/{id_topik}','kategoriCtrl@getVideoGallery');

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
//musik
Route::resource('musik','musikCtrl');
Route::get('allDataMusik','musikCtrl@allData');
Route::get('musik/changeState/{id}/{state}','musikCtrl@changeState');
Route::get('musikBackground','musikCtrl@musikBackground');
Route::get('musikClick','musikCtrl@musikClick');
Route::get('musikControl/{state}','musikCtrl@musikControl');
Route::get('musikState','musikCtrl@musikState');
//kabupaten
Route::resource('kabupaten','kabupatenCtrl');
Route::get('allDataKabupaten','kabupatenCtrl@allData');
Route::get('allDataNode','kabupatenCtrl@allDataNode');
//node
Route::resource('node','nodeCtrl');
Route::get('mainKabupaten','nodeCtrl@mainKabupaten');
Route::get('allNodes','nodeCtrl@allNodes');
//Gallery Node
Route::resource('galleryNode','galleryNodeCtrl');
Route::get('allGalleryNode/{id}','galleryNodeCtrl@allGalleryNode');


Route::get('/home', 'HomeController@index')->name('home');