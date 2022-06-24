@extends('layouts.master')
@section('css')
@section('title')
    Home
@stop
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
@endsection
@section('home')
active
@endsection
@section('content')


@foreach ($sections as $section )
    @if($section->section=='hero_section' && $section->page_title=='home')

<!--===== start landing page =====-->
<section class="residential_landing projects_landing" id="residential_landing">
    <div class="container dis-flx justify-space-between align-itm-center">
        <div class="text-info ">
            <h3 class="land-header projects-head">{{ $section->title }}</h3>
            <p>{{ $section->description }}
            </p>
            <a class="btn-brdr" href="#">{{ $section->sub_title }}</a>
        </div>
        <div class="number-link dis-flx" id="number-link">
            <span class="active">01</span>
            <span class="one">02</span>
            <span class="one">03</span>
        </div>
    </div>
</section>
@endif
@endforeach
<!--===== end landing page =====-->




@foreach ($sections as $section )
    @if($section->section=='about_us' && $section->page_title=='home')
<!--===== start about section =====-->
<section class="about">
    <div class="container dis-flx justify-space-between align-itm-center">
        <div class="project-details">
            <div class="head">
                <h2>{{ $section->title }}</h2>
            </div>
            <p>
                {{ $section->description }}
            </p>
            <a class="btn-brdr" style="color: #000; border-color:#000;" href="#">Learn More</a>

        </div>
        <div class="imgs">
            <img src="{{ asset($section->img) }}" alt="">
        </div>

    </div>
</section>
@endif
@endforeach
<!--===== end about section  =====-->



@foreach ($data as $item )
<!--===== start statistics section  =====-->
<section class="statistics">
    <div class="container statistics dis-flx justify-space-between align-itm-center">
        <div class="experience-year statistic">
            <h5 data-goal="10">{{ $item->years_of_experience_count }}+</h5>
            <span>years of experience</span>
        </div>
        <div class="implemented-projects statistic">
            <h5 data-goal="226">{{ $item->implemented_projects_count }}+</h5>
            <span>implemented projects</span>
        </div>
        <div class="clients statistic">
            <h5 data-goal="370">{{ $item->clients_count }}+</h5>
            <span>clients</span>
        </div>
    </div>
</section>
@endforeach
<!--===== end statistics section  =====-->


<!--===== start project-slider section  =====-->

@foreach ($sections as $section )
    @if($section->section=='offer' && $section->page_title=='home')
<section class="project-slider">
    <div class="container">
        <div class="details dis-flx justify-space-between align-itm-center">
            <div class="project-details">
                <div class="head">
                    <h2>{{ $section->title }}</h2>
                </div>
                <p>
                    {{ $section->description }}
                </p>
            </div>
            <a class="btn-brdr" style="color: #000; border-color:#000;" href="{{ route('our_projects') }}">View All</a>
        </div>
        <div class="swiper mySwiper">
            <div class="swiper-wrapper" style="height: 400px;">
                <div class="swiper-slide">
                    <img src="{{ asset($section->img) }}" />
                    <div class="swiper-slide-detail">
                        <div class="info">
                            <a href="{{ route('Cooperate_project') }}" class="Cooperate-btn">Cooperate Design</a>
                            <a href="{{ LaravelLocalization::localizeUrl('/cooperate_project') }}" class="view-project">View Project</a>

                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="{{ asset($section->img2) }}" />
                    <div class="swiper-slide-detail">
                        <div class="info">
                            <a href="{{ route('residential_project') }}" class="Cooperate-btn">Residential Design</a>
                            <a href="{{ LaravelLocalization::localizeUrl('/residential_project') }}" class="view-project">View Project</a>

                        </div>
                    </div>
                </div>

                <div class="swiper-slide">
                <img src="{{   asset($section->img3)}}" />
                    <div class="swiper-slide-detail">
                        <div class="info">
                            <a href="" class="Cooperate-btn">Commercial</a>
                            <a href="" class="view-project">View Project</a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </div>

</section>
@endif
@endforeach
<!--===== end project-slider section  =====-->
<!--===== start testimonials section  =====-->
<section class="testimonials">
    <div class="container">
        <div class="testimonial-header">
            <h2>What Our Clients Say</h2>
        </div>
        <div class="testimonials-content dis-flx justify-space-between align-itm-center">
            <div class="testimonial-imgs">
                <img src="{{ url('assets/images/clientImages/pic01.jpg') }}" alt="">
                <img class="active" src="{{ url('assets/images/clientImages/pic02.jpg') }}" alt="">
                <img src="{{ url('assets/images/clientImages/pic03.jpg') }}" alt="">
            </div>
            <div class="testimonials-messages">
                <i class="fa-solid fa-quote-left quote"></i>
                <h3>There Services where best and friendly</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate consequuntur est porro, deleniti
                    illo ratione aut iure laboriosam,</p>
                <h5>Abraham kosgard</h5>
                <span>Clients from ECD</span>
            </div>
        </div>
    </div>

</section>
<!--===== end testimonials section  =====-->
<!--===== start contact section =====-->
<section class="contact-us dis-flx">
    <div class="map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2799012646!2d-73.69949071459597!3d40.69767006593221!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2z2YbZitmI2YrZiNix2YPYjCDYp9mE2YjZhNin2YrYp9iqINin2YTZhdiq2K3Yr9ip!5e0!3m2!1sar!2s!4v1654869916185!5m2!1sar!2s"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="cont-frm" id="contact-us">
        <div class="frm-head">
            <h2>Leave Us a Message Here</h2>
        </div>
        <form method="POST" action="" class="frm">
            <div class="input-gr">
                <label>Name</label>
                <input type="text" name="name" placeholder="name">
            </div>
            <div class="input-gr">
                <label>Email</label>
                <input type="email" name="email" placeholder="email">
            </div>
            <div class="input-gr">
                <label>Message</label>
                <input type="text" name="message" placeholder="message">
            </div>
            <input type="submit" class="submit-btn" value="Send Message">
        </form>
    </div>

</section>
<!--===== end contact section =====-->
<!--===== start our clients section =====-->
<section class="our-clients">
    <div class="project-details container">
        <div class="head">
            <h2>Our Clients</h2>
        </div>
    </div>
    <div class="our-clients-slider">
        <div class="customerSwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 1@4x.png') }}" alt="aramco">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 2@4x.png') }}" alt="satorp">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 3@4x.png') }}" alt="sapic">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 6@4x.png') }}" alt="faraby">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 7@4x.png') }}" alt="sadara">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 1@4x.png') }}" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 9@4x.png') }}" alt="advanced">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 11@4x.png') }}" alt="sipchem">
                </div>
                <div class="swiper-slide">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 22@4x.png') }}" alt="gaz">
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </div>

</section>
<!--===== end our clients section  =====-->
@endsection
@section('js')
<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


<!-- Initialize Swiper -->
<script>
    var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        effect: "fade",
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
</script>
<script>
    var swiper = new Swiper(".customerSwiper", {
        slidesPerView: 5,
        spaceBetween: 15,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
    });
</script>

@endsection
