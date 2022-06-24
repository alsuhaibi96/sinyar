<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

use App\Models\FooterSection;

class ContentServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {

        $this->footer_data=FooterSection::first()->get() ;

        view()->composer('layouts.footer',function($view){
$view->with(['footer_data'=>$this->footer_data]);
        });
        //
    }
}