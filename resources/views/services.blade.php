@extends('layouts.master')
@section('css')
@section('title')
    Services
@stop
@endsection
@section('services')
active
@endsection
@section('content')
<!--===== start landing section =====-->
<section class="landing services-landing">
    <div class="container dis-flx align-itm-center">
        <div data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="text-info">
            <h3 >Our Services</h3>
            <p>We aim to be successful leading interior fit-out<br>business that provide solutions for quality life</p>
        </div>
    </div>
</section>
<!--===== end landing section =====-->
<!--===== start service description section =====-->
<section class="service-description ">
    <div class="container dis-flx align-itm-center justify-space-between">
        <div class="services-detail" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <h3>We provide the best services</h3>
            <p>Sinyar is Saudi leading company in the field of interior desigin,
                engineering, and creative solutions. We work with high standards of
                quality and aim to meet our client's needs in design & execution of
                residentail, commercial
            </p>
        </div>
        <img data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/FENCE DESIGN.jpg') }}" alt="">
    </div>

</section>
<!--===== end service description section =====-->
<!--===== start Offers  section =====-->
<section class="Offers" id="Offers">
    <div class="container">
        <div class="heading">
            <h1>Services We Offer</h1>
        </div>

        <div class="box-container">

            <div data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="box">
                <div class="image">
                    <img src="{{ url('assets/images/FENCE DESIGN.jpg') }}" alt="">
                </div>
                <div class="content">
                    <h3>Life is a journey, not a destination</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                </div>
            </div>
            <div data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="box">
                <div class="image">
                    <img src="{{ url('assets\images\21101-farabi-ceo office/f23b232e-a313-4ac6-b3f5-00c5e75fe2cb.jpg') }}"
                        alt="">
                </div>
                <div class="content">
                    <h3>Life is a journey, not a destination</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                </div>
            </div>
            <div data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="box">
                <div class="image">
                    <img src="{{ url('assets\images\21101-farabi-ceo office/11687121-df53-43a3-8af0-942f76dbe95e.jpg') }}"
                        alt="">
                </div>
                <div class="content">
                    <h3>Life is a journey, not a destination</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                </div>
            </div>

            <div data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="box">
                <div class="image">
                    <img src="{{ url('assets\images\21101-farabi-ceo office/0eaf4128-7a9f-48b6-b2dd-25704bc00537.jpg') }}"
                        alt="">
                </div>
                <div class="content">
                    <h3>Life is a journey, not a destination</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                </div>
            </div>

            <div data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="box">
                <div class="image">
                    <img src="{{ url('assets/images/FENCE DESIGN.jpg') }}" alt="">
                </div>
                <div class="content">
                    <h3>Life is a journey, not a destination</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur, natus!</p>
                </div>
            </div>

        </div>
    </div>

</section>
<!--===== end Offers  section =====-->
<!--===== start contact section =====-->
<section class="contact-us dis-flx" data-aos="fade-right" data-aos-duration="1000" data-aos-delay="500">
    <div class="map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387190.2799012646!2d-73.69949071459597!3d40.69767006593221!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2z2YbZitmI2YrZiNix2YPYjCDYp9mE2YjZhNin2YrYp9iqINin2YTZhdiq2K3Yr9ip!5e0!3m2!1sar!2s!4v1654869916185!5m2!1sar!2s"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div class="cont-frm">
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
@endsection
@section('js')

@endsection
