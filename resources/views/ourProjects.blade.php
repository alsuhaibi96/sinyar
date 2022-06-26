@extends('layouts.master')
@section('css')
@section('title')
    Our Projects
@stop

<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
@endsection
@section('projects')
active
@endsection
@section('content')
<!--===== start Our Projects_landing section =====-->
<section class="ourproject_landing ">
    <div class="container dis-flx justify-center align-itm-center">
        <div class="text-info ">
            <h3 class="land-header">Our Projects</h3>
            <p>We believe in implementing a collaborative approach taking the client on journey from start to finish
            </p>
        </div>
    </div>
</section>
<!--===== end Our Projects_landing section =====-->
<!--===== start Recent Projects section =====-->
<section class="recent-projects">
    <div class="container">
        <div class="recent-projects-head">
            <h2>Recent Projects</h2>
        </div>
        <div class="recent-projects-slider">
            <!-- Swiper -->
            <div class="mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3> Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea </h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/socpa/88.jpeg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/socpa/777.jpeg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/socpa/333.jpeg') }}" alt="Project Images">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="card">
                            <div class="info">
                                <h3>Chelsea Apartments</h3>
                                <a href="#">view project</a>
                            </div>
                            <img src="{{ url('assets/images/socpa/41.jpeg') }}" alt="Project Images">
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </div>

</section>
<!--===== end Recent Projects section =====-->
<!--===== start residential projects =====-->
<section class="aramco-projects our_projects_card">
    <div class="projects ">
        <div class="project dis-flx justify-space-between align-itm-center ">
            <div class="project-img swiper">
                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Cooperate Projects</h2>
                </div>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                    Officia fugiat quas illum reprehenderit a vero ut expedita
                    culpa? Id autem ipsam laudantium beatae animi libero nihil
                    dignissimos quae odio pariatur.
                </p>
                <a class="project-link" href="{{ LaravelLocalization::localizeUrl('/cooperate_project') }}">View Projects</a>

            </div>
        </div>
        <div class="project dis-flx justify-space-between align-itm-center ">
            <div class="project-img swiper">
                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Residential Projects</h2>
                </div>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                    Officia fugiat quas illum reprehenderit a vero ut expedita
                    culpa? Id autem ipsam laudantium beatae animi libero nihil
                    dignissimos quae odio pariatur.
                </p>
                <a class="project-link" href="{{ LaravelLocalization::localizeUrl('/residential_project') }}">View Projects</a>

            </div>
        </div>
        <div class="project dis-flx justify-space-between align-itm-center ">
            <div class="project-img swiper">
                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{ url('assets/images/landing-img.jpg') }}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Commercial Projects</h2>
                </div>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                    Officia fugiat quas illum reprehenderit a vero ut expedita
                    culpa? Id autem ipsam laudantium beatae animi libero nihil
                    dignissimos quae odio pariatur.
                </p>
                <a class="project-link" href="{{ LaravelLocalization::localizeUrl('/socpa') }}">View Projects</a>

            </div>
        </div>
    </div>
</section>
<!--===== end residential projects =====-->
@endsection
@section('js')
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 3,
        spaceBetween: 3,
        loop: false,
        centeredSlidesBounds: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            renderBullet: function (index, className) {
            return '<span class="' + className + '">' + (index + 1) + "</span>";
          },
        },
    });
</script>
<!-- Swiper JS -->
<script>
    var swiper = new Swiper('.swiper', {
        // Optional parameters
        effect: "flip",
        grabCursor: true,
        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },

        // Navigation arrows
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
</script>
@endsection
