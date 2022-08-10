@extends('template')
@section('title', 'dashboard')
@section('dashboard', 'active')

@section('content')


<div class="container-fluid py-4">
  <div class="row">
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
      <div class="card">
        <div class="card-body p-3">
          <div class="row">
            <div class="col-8">
              <div class="numbers">
                <p class="text-sm mb-0 text-capitalize font-weight-bold">Total Kategori</p>
                <h5 class="font-weight-bolder mb-0">
                  {{ $countcategories }}
                </h5>
              </div>
            </div>
            <div class="col-4 text-end">
              <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
      <div class="card">
        <div class="card-body p-3">
          <div class="row">
            <div class="col-8">
              <div class="numbers">
                <p class="text-sm mb-0 text-capitalize font-weight-bold">Total Product</p>
                <h5 class="font-weight-bolder mb-0">
                  {{ $countproduct }}
                </h5>
              </div>
            </div>
            <div class="col-4 text-end">
              <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
      <div class="card">
        <div class="card-body p-3">
          <div class="row">
            <div class="col-8">
              <div class="numbers">
                <p class="text-sm mb-0 text-capitalize font-weight-bold">Total Assets</p>
                <h5 class="font-weight-bolder mb-0">
                  {{ $countasset }}
                </h5>
              </div>
            </div>
            <div class="col-4 text-end">
              <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                <i class="ni ni-paper-diploma text-lg opacity-10" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-xl-3 col-sm-6">
      <div class="card">
        <div class="card-body p-3">
          <div class="row">
            <div class="col-8">
              <div class="numbers">
                <p class="text-sm mb-0 text-capitalize font-weight-bold">Product Assets</p>
                <h5 class="font-weight-bolder mb-0">
                  {{ $countproductassets }}
                </h5>
              </div>
            </div>
            <div class="col-4 text-end">
              <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                <i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row mt-4">
    <div class="col-12">
      <div class="card">
        <div class="card-body p-3">
          <div class="row">
            <div class="col-12">
              <div class="d-flex flex-column h-100">
                <h5 class="font-weight-bolder">List Produk</h5>
              </div>
            </div>
            @foreach($produk as $prod)
            <div class="col-xl-4 col-sm-6 col-12 py-2">
              <div class="card">
                <div class="card-header p-0 mx-3 mt-3 position-relative z-index-1">
                  <a href="detail-{{ $prod->product_slug }}" class="d-block">
                    <img src="{{ $prod->path }}" class="img-fluid border-radius-lg">
                  </a>
                </div>

                <div class="card-body pt-2">
                  <span class="text-gradient text-primary text-uppercase text-xs font-weight-bold my-2">Rp. {{ $prod->price }}</span>
                  <a href="detail-{{ $prod->product_slug }}" class="card-title h5 d-block text-darker">
                    {{ $prod->product_name }}
                  </a>
                  <p class="card-description mb-4">
                    {{ $prod->description }}
                  </p>
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row mt-4">
    <div class="col-12">
      <div class="card">
        <div class="card-body p-3">
          <div class="row">
            <div class="col-12">
              <div class="d-flex flex-column h-100">
                <h5 class="font-weight-bolder">List Kategori</h5>
              </div>
            </div>
            @foreach($categories as $cat)
            <div class="col-xl-4 col-sm-6 col-12 py-2">
              <div class="card">
                <div class="card-header p-0 mx-3 mt-3 position-relative z-index-1">
                  <a href="javascript:;" class="d-block">
                    <img src="{{ $cat->path }}" class="img-fluid border-radius-lg" style="height: max-height;">
                  </a>
                </div>

                <div class="card-body pt-2">
                  <span class="text-gradient text-primary text-uppercase text-xs font-weight-bold my-2">{{ $cat->category_slug }}</span>
                  <a href="javascript:;" class="card-title h5 d-block text-darker">
                    {{ $cat->category_name }}
                  </a>
                </div>
              </div>
            </div>
            @endforeach
          </div>
        </div>
      </div>
    </div>
  </div>

  <footer class="footer pt-3  ">
    <div class="container-fluid">
      <div class="row align-items-center justify-content-lg-between">
        <div class="col-lg-6 mb-lg-0 mb-4">
          <div class="copyright text-center text-sm text-muted text-lg-start">
            © <script>
              document.write(new Date().getFullYear())
            </script>,
            made with <i class="fa fa-heart"></i> by
            <a href="https://www.creative-tim.com" class="font-weight-bold" target="_blank">Creative Tim</a>
            for a better web.
          </div>
        </div>
        <div class="col-lg-6">
          <ul class="nav nav-footer justify-content-center justify-content-lg-end">
            <li class="nav-item">
              <a href="https://www.creative-tim.com" class="nav-link text-muted" target="_blank">Creative Tim</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/presentation" class="nav-link text-muted" target="_blank">About Us</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/blog" class="nav-link text-muted" target="_blank">Blog</a>
            </li>
            <li class="nav-item">
              <a href="https://www.creative-tim.com/license" class="nav-link pe-0 text-muted" target="_blank">License</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
</div>
@endsection