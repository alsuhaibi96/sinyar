@extends("layouts.master")
@section("css")
@section("title")
Residentail Projects
@stop
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
@endsection
@section('projects')
active
@endsection
@section("content")
<!--===== start residential_landing section =====-->
<section class="residential_landing">
    <div class="container dis-flx justify-center align-itm-center">
        <div class="text-info ">
            <h3 class="land-header">Residentail Projects</h3>
            <p>We believe in implementing a collaborative approach taking the client on journey from start to finish </p>
        </div>
    </div>
</section>
<!--===== end residential_landing section =====-->
<!--===== start residential_landing section =====-->
<!--===== start residential projects =====-->
<section class="aramco-projects">
    <div class="projects ">
        <div class="project dis-flx justify-space-between align-itm-center ">
            <div class="project-img swiper">
                <!-- Slider main container -->
                <div class="swiper">
                    <!-- Additional required wrapper -->
                    <div class="swiper-wrapper">
                        <!-- Slides -->
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Chelsea Bricks</h2>
                    <h4>CLIENT</h4>
                    <h3>SOCPA</h3>
                </div>
                <ul class="detail">
                    <li>Project Year:<span>2021</span></li>
                    <li>Location:<span>Dhahran ,Sudi Arabin</span></li>
                    <li>Scope Of Work:<span>Interior Concept Design</span></li>
                </ul>

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
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Chelsea Bricks</h2>
                    <h4>CLIENT</h4>
                    <h3>SOCPA</h3>
                </div>
                <ul class="detail">
                    <li>Project Year:<span>2021</span></li>
                    <li>Location:<span>Dhahran ,Sudi Arabin</span></li>
                    <li>Scope Of Work:<span>Interior Concept Design</span></li>
                </ul>

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
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/landing-img.jpg')}}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Chelsea Bricks</h2>
                    <h4>CLIENT</h4>
                    <h3>SOCPA</h3>
                </div>
                <ul class="detail">
                    <li>Project Year:<span>2021</span></li>
                    <li>Location:<span>Dhahran ,Sudi Arabin</span></li>
                    <li>Scope Of Work:<span>Interior Concept Design</span></li>
                </ul>

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
                            <img src="{{url('assets/images/socpa/41.jpeg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/socpa/41.jpeg')}}" alt="Project Images">
                        </div>
                        <div class="swiper-slide">
                            <img src="{{url('assets/images/socpa/41.jpeg')}}" alt="Project Images">
                        </div>
                        ...
                    </div>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="project-details">
                <div class="head">
                    <h2>Chelsea Bricks</h2>
                    <h4>CLIENT</h4>
                    <h3>SOCPA</h3>
                </div>
                <ul class="detail">
                    <li>Project Year:<span>2021</span></li>
                    <li>Location:<span>Dhahran ,Sudi Arabin</span></li>
                    <li>Scope Of Work:<span>Interior Concept Design</span></li>
                </ul>

            </div>
        </div>
    </div>
</section>
<!--===== end residential projects =====-->
<!--===== end residential_landing section =====-->
@endsection
@section("js")
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
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
