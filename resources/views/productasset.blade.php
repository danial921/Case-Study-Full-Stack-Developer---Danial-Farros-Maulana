@extends('template')
@section('title', 'productasset')
@section('productasset', 'active')

@section('content')


<div class="container-fluid py-4">
    @if(session()->has('success'))
    <div class="alert alert-secondary alert-dismissible fade show" role="alert" style="color: white;">
        <span class="alert-icon"><i class="ni ni-like-2"></i></span>
        <span class="alert-text"><strong>Success!</strong>
            <span class="alert-text"> {{ session()->get('success') }}</span>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
    </div>
    @endif

    <div class="row my-4">
        <div class="col-lg-12 mb-4">
            <div class="card">
                <div class="card-header pb-0">
                    <h4>Add asset</h4>
                    <div style="border-bottom: 1px #49505760 solid ;"></div>
                </div>
                <div class="card-body px-3 pb-2">
                    <form method="POST" action="{{ route('productassetstore') }}">
                        @csrf
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Asset id</label>
                            <input name="asset_id" class="form-control" placeholder="add your asset id">
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlInput1">Product id</label>
                            <input name="product_id" class="form-control" placeholder="add your product id">
                        </div>
                        <div class="text-right" style="max-width: 250px;">
                            <button type="submit" class="btn bg-gradient-dark w-100 my-4 mb-2">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection