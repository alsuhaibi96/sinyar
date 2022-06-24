@extends('layouts.master')
@section('css')
@section('title')
    Cooperate Projects
@stop
@endsection
@section('projects')
active
@endsection
@section('content')
<!--===== start Cooperate_landing section =====-->
<section class="cooperate_landing">
    <div class="container dis-flx justify-center align-itm-center">
        <div class="text-info ">
            <h3 class="land-header">Cooperate Projects</h3>
            <p>We believe in implementing a collaborative approach taking the client on journey from start to finish
            </p>
        </div>
    </div>
</section>
<!--===== end residential_landing section =====-->

<!--===== start cooperates section =====-->
<section class="cooperates container">
    <div class="cooperate">
        <img src="{{ url('assets/images/our_clients_logo/3Artboard 1@4x.png') }}" alt="">
        <div class="box-content">
            <h3 class="land-header cooperate-head">Aramco Interiors</h3>
            <p>
                We believe in implementing a collaborative approach taking the client on journey from start to finish,
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eligendi obcaecati non inventore
                corrupti dolorum facere est cum suscipit necessitatibus id numquam, quos error perferendis corporis
                tenetur. Excepturi, iusto animi.
            </p>
            <a class="project-link" href="#">View Full Project</a>
        </div>
    </div>
    <div class="cooperate">
        <img src="{{ url('assets/images/our_clients_logo/3Artboard 3@4x.png') }}" alt="">
        <div class="box-content">
            <h3 class="land-header cooperate-head">Sabic Interiors</h3>
            <p>
                We believe in implementing a collaborative approach taking the client on journey from start to finish,
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eligendi obcaecati non inventore
                corrupti dolorum facere est cum suscipit necessitatibus id numquam, quos error perferendis corporis
                tenetur. Excepturi, iusto animi.
            </p>
            <a class="project-link" href="#">View Full Project</a>
        </div>
    </div>
    <div class="cooperate">
        <img src="{{ url('assets/images/our_clients_logo/3Artboard 6@4x.png') }}" alt="">
        <div class="box-content">
            <h3 class="land-header cooperate-head">Farabi Interior</h3>
            <p>
                We believe in implementing a collaborative approach taking the client on journey from start to finish,
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quibusdam eligendi obcaecati non inventore
                corrupti dolorum facere est cum suscipit necessitatibus id numquam, quos error perferendis corporis
                tenetur. Excepturi, iusto animi.
            </p>
            <a class="project-link" href="#">View Full Project</a>
        </div>
    </div>
</section>
<!--===== end cooperates section =====-->
@endsection
@section('js')
@endsection
