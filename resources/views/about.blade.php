@extends("layouts.master")
@section("css")
@section("title")
About us
@stop
@endsection
@section('about')
active
@endsection
@section("content")

@foreach ($home_sections as $home_section )
    @if($home_section->section=='about_us')

<!--===== start landing page =====-->
<section class="landing">
    <div class="container dis-flx align-itm-center">
        <div class="text-info" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <h3> {{ $home_section->title}}</h3>
            {!! $home_section->body !!}
        </div>
    </div>
</section>
@endif
@endforeach
<!--===== end landing page =====-->


@foreach ($home_sections as $home_section )
@if($home_section->section=='our_story')
<!--===== start our story section =====-->

<section class="our-story">
    <div class="container dis-flx justify-space-between align-itm-center">
        <div class="image" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <img src="{{asset($home_section->image)}}" alt="">
        </div>
        <div class="txt-info" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <h3> {{ $home_section->title}}</h3>
            <h2> {{ $home_section->seo_title }}</h2>
              {!! $home_section->body!!}
        </div>
    </div>
</section>
<!--===== end our story section =====-->
@endif
@endforeach


@foreach ($home_sections as $home_section )

@if($home_section->section=='vision')
<!--===== start vision section =====-->
<section class="vision">
    <div class="container dis-flx align-itm-center">
        <div class="card-img" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <img src="{{asset($home_section->image)}}" alt="">
        </div>
        <div class="card-txt" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <h2>{{ $home_section->title }}</h2>
           {!!  $home_section->body!!}
        </div>

    </div>

</section>
@endif
@endforeach
<!--===== end vision section =====-->




@foreach ($home_sections as $home_section )
@if($home_section->section=='mission')

<!--===== start mission section =====-->
<section class="mision">
    <div class="container dis-flx justify-space-between align-itm-center flx-wrap">
        <div class="image" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <img src="{{asset($home_section->image)}}" alt="">
        </div>
        <div class="txt" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="500">
            <h2>{{ $home_section->title }}</h2>
            {!! $home_section->body !!}
        </div>
    </div>

</section>
@endif
@endforeach

<!--===== end mission section =====-->

<!--===== start contact section =====-->
<section class="contact-us dis-flx">
    <div class="map">
        <iframe 
        src="{{asset($footer_data[0]['map_url'])  }}" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
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
@section("js")
@endsection
