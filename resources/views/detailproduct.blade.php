@extends('template')
@section('title', 'detail product')

@section('content')

<div class="card card-frame">
    <div class="card-header p-0 mx-3 mt-3 position-relative z-index-1">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        @foreach($imgpath as $img)
                        <div class="carousel-item active">
                            <img src="{{ $img->path }}" class="d-block w-100" alt="...">
                        </div>
                        @endforeach
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="card-body pt-4">
    <span class="text-gradient text-primary text-uppercase text-xs font-weight-bold my-2"><strong>Rp. {{ $desc[0]->price }}</strong></span>
        <a  class="card-title h5 d-block text-darker">
            {{ $desc[0]->product_name }}
        </a>
        <p class="card-description mb-2">
            {{ $desc[0]->description }}
        </p>
    </div>
</div>

@endsection