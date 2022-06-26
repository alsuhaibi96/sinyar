<?php

use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CMS\HomeSection;

use App\Http\Controllers\ContactUs;
use App\Http\Controllers\CMS\ProjectsHomeController
;


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
Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
	    'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
], function()
{
	/** All get aroutes are here**/
	/** ADD ALL LOCALIZED ROUTES INSIDE THIS GROUP **/
	Route::get('/',[HomeSection::class,'index'])->name('home');
	Route::get('/contact',[HomeSection::class,'contact_link'])->name('contact_link');

	Route::get('/about-us',[HomeSection::class,'about'])->name('about_us');
    Route::get('/footer_sec',[HomeSection::class,'callFooter']);
    Route::get('/projects',[ProjectsHomeController::class,'homeProjects'])->name('projects');
    Route::get('/get-in-touch',[HomeSection::class,'contact'])->name('get_in_touch');
    // Route::get('/demo_translate',[HomeSection::class,'demo_translate']);

    

    Route::get('/aramco_project', function () {
        return view('aramco_project');
    });
    Route::get('/residential_project', function () {
        return view('residential_project');
    })->name('residential_project');
    Route::get('/cooperate_project', function () {
        return view('cooperate_project');
    })->name('Cooperate_project');
    Route::get('/ourProjects', function () {
        return view('ourProjects');
    })->name('our_projects');
    Route::get('/socpa', function () {
        return view('socpa');
    });
  
    Route::get('/services', function () {
        return view('services');
    });
});





Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
