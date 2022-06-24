@extends("layouts.master")
@section("css")
@section("title")
Socpa Projects
@stop
@endsection
@section('projects')
active
@endsection
@section("content")
<!--===== start viedo and detail section =====-->
<section class="socpa-landing">
    <div class="container dis-flx justify-space-between align-itm-center">
        <div  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" class="socpa_video">
            <video src="https://res.cloudinary.com/codelife/video/upload/v1637805738/intro_l5ul1k.mp4" controls  muted  height="300px"></video>
        </div>
        <div class="details"  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <div class="card">
                <div class="logo">
                    <img src="{{ url('assets/images/our_clients_logo/3Artboard 23@4x.png') }}" alt="socpa logo">
                </div>
                <div class="project-details">
                    <div class="head">
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
    </div>
</section>
<!--===== end viedo and detail section =====-->
<!--===== start Socpa projects images section =====-->
<section class="socpa-projects-imgs">
    <div class="container">
        <div class="imgs-box">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/0000000.JPEG') }}" alt="">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/41.JPEG') }}" alt="">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/88.JPEG') }}" alt="">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/333.JPEG') }}" alt="">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/777.JPEG') }}" alt="">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/UUUUU.JPEG') }}" alt="">
            <img  data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500" src="{{ url('assets/images/socpa/88.JPEG') }}" alt="">
        </div>
    </div>
</section>
<!--===== end Socpa projects images section =====-->
@endsection
@section("js")
@endsection
