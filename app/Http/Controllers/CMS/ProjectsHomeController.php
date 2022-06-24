<?php

namespace App\Http\Controllers\CMS;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HomePageProject;
class ProjectsHomeController extends Controller
{
    //Retireve data of the home page projects

    function homeProjects(){
        $homeProjects=HomePageProject::All();

        return view('ourProjects',compact('homeProjects'));
    }
}