@extends('layouts.apphome')

@section('content')

<section id="hero" class="hero d-flex align-items-center">

  <div class="container">
    <div class="row">
      <div class="col-lg-6 d-flex flex-column justify-content-center">
        <h1 data-aos="fade-up">Belanja Berbagai Produk Secara Online</h1>
        <h2 data-aos="fade-up" data-aos-delay="400">E-Commerce adalah Website Toko Online dimana pelanggan dapat membeli berbagai macam produk secara online</h2>
        <div data-aos="fade-up" data-aos-delay="600">
          <div class="text-center text-lg-start">
            @if (Auth::check() && Auth::user()->role == 'admin')
            <a href="{{  url('/dashboard')  }}" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
              <span>Admin</span>
              <i class="bi bi-arrow-right"></i>
            </a>
            @else
            <a href="{{  url('/denied')  }}" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
              <span>Admin</span>
              <i class="bi bi-arrow-right"></i>
            </a>
            @endif
          </div>
        </div>
      </div>
      <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
        <img src="{{ asset('assets2/img/hero-img.png') }}" alt="">
      </div>
    </div>
  </div>

</section><!-- End Hero -->

  <main id="main">
    <!-- ======= Recent Blog Posts Section ======= -->
    <section id="recent-blog-posts" class="recent-blog-posts">
      <header class="section-header">
        <p>Produk</p>
      </header>
      <div class="row" data-aos="fade-up">
          @php $no = 1; @endphp
          @foreach ($produk as $p) 
            <div class="col-lg-4">
              <div class="post-box">
                <div class="post-img"><img class="img-fluid" src="{{ asset('assets2/img/sepatu.jpeg') }}"></div>
                  <h3>{{ $p->nama }}</h3>
                  <p>{{ $p->nama_kategori }}</p>
                  <a href="{{ '/detail_produk' }}" class="readmore stretched-link mt-auto"><span>Detail Produk</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
  
      </div>


  
    </section><!-- End Recent Blog Posts Section -->
  
  
  </main><!-- End #main -->
@endsection