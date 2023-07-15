@extends('layouts.apphome')

@section('content')

<section id="hero" class="hero d-flex align-items-center">

    <div class="container">
        <div class="row">
            <div class="col-lg-6 d-flex flex-column justify-content-center">
                <h1 data-aos="fade-up">Akses Ditolak!</h1>
                <h2 data-aos="fade-up" data-aos-delay="400">Silahkan kembali ke halaman utama, Halaman Admin hanya bisa diakses oleh Admin</h2>
                <div data-aos="fade-up" data-aos-delay="600">
                    <div class="text-center text-lg-start">
                        <a href="{{ '/' }}" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                            <i class="bi bi-arrow-left"></i>
                            <span>Kembali Ke Halaman</span>
                            
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
            <img src="{{ ('assets2/img/features-2.png') }}" alt="">
            </div>
        </div>
    </div>

</section>

@endsection