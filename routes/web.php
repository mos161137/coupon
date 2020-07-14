<?php
Auth::routes();
Route::get('', 'HomeController@index')->name('home');
Route::any('towerjob','TowerJobController@index');
Route::resource('item','ItemController');
Route::resource('moss','MessageController');
Route::view('bcon','onepage.bcon');
Route::view('overrule','onepage.overrule');
Route::view('coupon_code/{coupon}','onepage.coupon_code');
Route::resource('station','StationController');
//Route::resource('test01','Api\Test01Controller');
Route::resource('selectpackage','SelectpackageController');
Route::get('/search','CheckpointController@store');

//API
Route::any('jquery','JqueryController@index');
Route::any('selectpackage/show',"SelectpackageController@show");
Route::any('dashboard@show',"DashboardController@show");
Route::any('checkpoint@show',"CheckpointController@show");
Route::any('newaccount/{account_id}',"AccountingController@selectacc");
Route::resource('/api/logbeacon','Api\LogBeaconController');
Route::resource('/api/user','Api\UserController');
Route::resource('user',"UserController");
Route::resource('checkpoint',"CheckpointController");
Route::any('checkpointsearch',"CheckpointController@search");
// Route::any('checkpointsearchhn',"CheckpointController@searchhn");
Route::any('point_0',"AccountingController@point_0");
Route::any('point_10',"AccountingController@point_10");
Route::any('point_20',"AccountingController@point_20");
Route::any('point_40',"AccountingController@point_40");
Route::any('point_50',"AccountingController@point_50");

Route::any('dashboard@modal1',"DashboardController@modal1");
Route::any('account@modal2',"AccountingController@modal2");
Route::any('pay',"SellController@pay");
Route::any('pay_0',"SellController@pay_0");
// Route::view('point_0','accounting.status.point_0');
Route::resource('accounting',"AccountingController");
Route::resource('sell',"SellController");
Route::get('logout',"Auth\LoginController@logout")->name('logout');
Route::resource('dashboard',"DashboardController");
Route::resource('opencoupon',"OpencouponController");
Route::resource('checkcash',"CheckcashController");
Route::resource('mmmmmm',"TestController");
Route::get('/export_excel', 'ExportExcelController@index');
Route::get('/export_excel/excel', 'ExportExcelController@excel')->name('export_excel.excel');
Route::get('pdf1','PDFController@pdf');
Route::view('search','sell.test');


//Route::get('add_on', 'ICD10Controller@index');
Route::get('add_on', 'ICD10Controller@search');
//Route::get('/{vue}', 'SPAController@index')->where('vue', '.*');

