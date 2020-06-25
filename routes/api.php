<?php

use Illuminate\Http\Request;

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

//List Blogs
Route::get('/','BlogController@index');
Route::get('/show_deleted', 'BlogController@show_deleted');
Route::get('/{id}','BlogController@show');
Route::post('/','BlogController@store');
Route::put('/','BlogController@store');
Route::put('/restore/{id}', 'BlogController@restore_blog');
Route::delete('/{id}','BlogController@destroy');
Route::post('/filter', 'BlogController@filter');


//List of Deleteed Blogs