<?php

namespace App\Http\Controllers\CMS;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\FooterSection;
use App\Models\Section;
use App\Models\HomePageSection;
use App\Models\ClientsSaying;
use App\Models\Slider;
use App\Models\MediaAsset;






class HomeSection extends Controller
{

    /**
     * The method that returns data to the view 
     */
    public function index(){

      //  $say=HomePageSection::find(1)->sayings()->first();
   
       $Section=Section::find(1);
    
       $data= $Section->page->all();
  
       $sections=Section::where('page_id',  $Section->page->id)->get();
       $sayings=ClientsSaying::where('home_id',$Section->page->id)->get();

       $sayings=HomePageSection::with('sayings')->find(1);
 
        $slider=Slider::where('page_id', $Section->page->id)->get();
    
 $assets=MediaAsset::where('slider_id', $slider[0]['id'])->get();


       return view('home',compact('data','sections','sayings','slider','assets'));
    }
   /**
     * The method that returns data  of the about page to the view 
     */
    public function about(){
      $home_sections=  \App\Models\MainHomeSection::All();
       $footer_data=FooterSection::first()->get() ;
       
       return view('about',compact('home_sections' ,'footer_data'));
    }
/**
 * return data to footer
 */
public function callFooter(){
     $footer_data=FooterSection::first()->get() ;
     
     return view('layouts.footer',compact('footer_data'));
  }
  /**
   * Return the view of get in touch 
   * 
   */
  public function contact(){
    return redirect('home#contact-us');
  }

}