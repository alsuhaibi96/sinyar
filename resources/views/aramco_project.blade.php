@extends("layouts.master")
@section("css")
@section("title")
aramco_projects
@stop
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
@endsection
@section("content")
<!--===== start landing section =====-->
<section class="aramco-landing dis-flx ">
    <div class="armco-img">
        <img src="{{ url('assets/images/our_clients_logo/3Artboard 1@4x.png') }}" alt="aramco logo">
    </div>
    <div class="description">
        <div class="container">
            <h2>Description:</h2>
            <p>
                Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                Possimus adipisci atque quia ipsum voluptatem, inventore
                consequatur nobis quod nihil non harum cumque neque culpa
                magni quam sint! Modi, iure similique!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                Possimus adipisci atque quia ipsum voluptatem, inventore
                consequatur nobis quod nihil non harum cumque neque culpa
                magni quam sint! Modi, iure similique!
            </p>
        </div>
    </div>
</section>
<!--===== end landing section =====-->
<!--===== start aramco projects =====-->
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
<!--===== end aramco projects =====-->
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
