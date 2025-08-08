<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>SiAMang</title>
  <meta name="description" content="Pendaftaran Magang untuk mahasiswa.">
  <meta name="keywords" content="Magang, Pendaftaran, Imigrasi">
  <link href="{{ asset('bootslander/assets/img/Logo.png') }}" rel="icon">

  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Raleway:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

  <link href="{{ asset('bootslander/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('bootslander/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
  <link href="{{ asset('bootslander/assets/vendor/aos/aos.css') }}" rel="stylesheet">
  <link href="{{ asset('bootslander/assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
  <link href="{{ asset('bootslander/assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="{{ asset('Bootslander/assets/css/main.css') }}">
</head>

<body class="index-page">

<header id="header" class="header d-flex align-items-center fixed-top">
  <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">
    <a href="index.html" class="logo d-flex align-items-center">
  <img src="{{ asset('bootslander/assets/img/fix.jpg') }}" alt="Logo">
  
  <div class="text-container d-flex flex-column align-items-start ms-2">
    <h1 class="sitename">SiAMang</h1>
    <span class="description-title">Sistem Informasi Anak Magang</span>
  </div>
</a>

    <nav id="navmenu" class="navmenu">
      <ul>
        <li><a href="#hero" class="active">Home</a></li>
        <li><a href="#about">Alur Pendaftaran</a></li>
        <!--<li><a href="#details">Sejarah</a></li>
        <li><a href="#gallery">Gallery</a></li>-->
        <li><a href="#maps">Lokasi</a></li>
        <li><a href="{{ route('login') }}">Login</a></li>
        <li><a href="{{ route('register') }}">Registrasi</a></li>
      </ul>
      <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
    </nav>
  </div>
</header>

<main class="main">

  <section id="hero" class="hero section dark-background">
    <div class="container">
      <div class="row gy-4 justify-content-between align-items-center">
        <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-in">
          <h1>Daftar Magang <span>Sekarang</span></h1>
          <div class="d-flex align-items-center gap-3 flex-wrap">
            <a href="{{ route('login') }}" class="btn-get-started">Mulai Pendaftaran</a>
            <!--<a href="https://youtu.be/FKr4VOVSzgE?si=umrKLhQCy9wABWi7" class="glightbox btn-watch-video d-flex align-items-center">
              <i class="bi bi-play-circle-fill"></i><span>Tonton Video</span>
            </a>-->
          </div>
        </div>
        <div class="col-lg-5 col-md-8 col-sm-10 order-lg-last hero-img" data-aos="zoom-out" data-aos-delay="100">
          <img src="{{ asset('bootslander/assets/img/gambar22.png') }}" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

    <svg class="hero-waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none">
      <defs>
        <path id="wave-path" d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18v44h-352z"></path>
      </defs>
      <g class="wave1"><use xlink:href="#wave-path" x="50" y="3"></use></g>
      <g class="wave2"><use xlink:href="#wave-path" x="50" y="0"></use></g>
      <g class="wave3"><use xlink:href="#wave-path" x="50" y="9"></use></g>
    </svg>
  </section>

  @php
  // Mengambil persyaratan magang yang aktif berdasarkan waktu dunia nyata
  $requirement = \App\Models\InternshipRequirement::currentlyActive()
                  ->latest()
                  ->first();
@endphp

@if($requirement)
<section id="about" class="about section">
<div class="container" data-aos="fade-up" data-aos-delay="100">
  <div class="row align-items-xl-center gy-5">
    <div class="col-xl-5 content" data-aos="fade-up">
      <div class="magang-box">
        <h3 class="fw-bold">Persyaratan Magang</h3>
        <ul class="magang-requirements">
          <li><i class="bi bi-file-earmark-text"></i>
              <div><strong>Dokumen:</strong><br>{!! $requirement->documents !!}</div>
          </li>
          <li><i class="bi bi-calendar-event"></i>
              <div><strong>Batas Waktu:</strong><br>{{ \Carbon\Carbon::parse($requirement->deadline)->format('d F Y') }}</div>
          </li>
          <li><i class="bi bi-people"></i>
              <div><strong>Kuota:</strong><br>{{ $requirement->quota }} Orang</div>
          </li>
          <li><i class="bi bi-calendar"></i>
              <div><strong>Periode:</strong><br>{{ $requirement->period }}</div>
          </li>
          <li><i class="bi bi-geo-alt"></i>
              <div><strong>Lokasi:</strong><br>{{ $requirement->location }}</div>
          </li>
          @if($requirement->additional_info)
          <li><i class="bi bi-info-circle"></i>
              <div><strong>Info Tambahan:</strong><br>{!! $requirement->additional_info !!}</div>
          </li>
          @endif
      </ul>
      </div>
    </div>
    <div class="col-xl-7 d-flex flex-column align-items-center text-center">
      <div class="row gy-4 icon-boxes justify-content-center">
        <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
          <div class="icon-box">
            <div class="number-badge">1</div>
            <i class="bi bi-person-add"></i>
            <h3>Registrasi Akun</h3>
            <p>Perwakilan kelompok mendaftar akun dengan mengisi data diri lengkap melalui website kami.</p>
          </div>
        </div>
        <div class="col-md-6" data-aos="fade-up" data-aos-delay="300">
          <div class="icon-box">
            <div class="number-badge">2</div>
            <i class="bi bi-file-earmark-text"></i>
            <h3>Lengkapi Form</h3>
            <p>Isi form pendaftaran kelompok beserta data anggota (maksimal 6 orang).</p>
          </div>
        </div>
        <div class="col-md-6" data-aos="fade-up" data-aos-delay="400">
          <div class="icon-box">
            <div class="number-badge">3</div>
            <i class="bi bi-hourglass-split"></i>
            <h3>Proses Seleksi</h3>
            <p>Tim kami akan melakukan seleksi dan menginformasikan hasil melalui WhatsApp.</p>
          </div>
        </div>
        <div class="col-md-6" data-aos="fade-up" data-aos-delay="500">
          <div class="icon-box">
            <div class="number-badge">4</div>
            <i class="bi bi-calendar-check"></i>
            <h3>Konfirmasi & Mulai</h3>
            <p>Jika lolos seleksi, lakukan konfirmasi dan ikuti arahan teknis.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>
@else
<section id="about" class="about section">
<div class="container" data-aos="fade-up" data-aos-delay="100">
  <div class="row align-items-center">
    <div class="col-12 text-center">
      <div class="alert alert-info p-5" role="alert">
        <h4 class="alert-heading mb-4"><i class="bi bi-info-circle-fill me-2"></i>Tidak Ada Periode Magang Aktif</h4>
        <p>Saat ini tidak ada periode pendaftaran magang yang sedang aktif berdasarkan tanggal saat ini.</p>
        <hr>
        <p class="mb-0">Silakan periksa kembali halaman ini di lain waktu atau hubungi kami untuk informasi lebih lanjut.</p>
      </div>
    </div>
  </div>
</div>
</section>
@endif

<!-- Maps Section -->
<section id="maps" class="maps section">
  <div class="container section-title" data-aos="fade-up">
    <h2>Lokasi</h2>
    <div><span>Kantor</span> <span class="description-title">Wilayah Imigrasi Medan</span></div>
  </div>

  <div class="container" data-aos="fade-up" data-aos-delay="100">
    <div class="row gy-4">
      <div class="col-lg-6" data-aos="fade-right">
        <div class="map-info">
          <h3>Alamat Kantor</h3>
          <p>
            <i class="bi bi-geo-alt-fill"></i> 
            Kanwil Sumatera Utara, Jl. Putri Hijau No.4, Kesawan, Medan Barat, Kota Medan, Sumatra Utara 20112
          </p>
          
          <h3 class="mt-4">Kontak</h3>
          <!--<p>
            <i class="bi bi-telephone-fill"></i> 
            ?
          </p>-->
          <p>
            <i class="bi bi-envelope-fill"></i> 
            ?
          </p>
          
          <h3 class="mt-4">Jam Operasional</h3>
          <p>
            <i class="bi bi-clock-fill"></i> 
            Senin - Kamis: 08:00 - 15:00 WIB <br>
            Istirahat : 12.00 - 13.00 WIB
          </p>
          <p>
            <i class="bi bi-clock-fill"></i> 
            Jum'at : 08:00 - 15:30 WIB <br>
            Istirahat : 12.00 - 14.00 WIB
          </p>
        </div>
      </div>
      
      <div class="col-lg-6" data-aos="fade-left">
        <div class="map-container">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d995.4928141901486!2d98.67594558112795!3d3.59406445597804!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x303131c6a6cb8cef%3A0x2083fac877fe08cc!2sKantor%20Wilayah%20Kementerian%20Hukum%20dan%20HAM%20Sumatera%20Utara!5e0!3m2!1sen!2sid!4v1751602552501!5m2!1sen!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>
    </div>
  </div>
</section>

</main>

<footer id="footer" class="footer dark-background">
  <div class="container copyright text-center">
    <p>© <strong class="px-1 sitename">Pendaftaran Magang</strong> All Rights Reserved</p>
  </div>
</footer>

<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<div id="preloader"></div>

<script src="{{ asset('bootslander/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('bootslander/assets/vendor/aos/aos.js') }}"></script>
<script src="{{ asset('bootslander/assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
<script src="{{ asset('bootslander/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
<script src="{{ asset('Bootslander/assets/js/main.js') }}"></script>

<script>
  // Header scroll effect
  window.addEventListener('scroll', function() {
    const header = document.getElementById('header');
    if (window.scrollY > 50) {
      header.classList.add('scrolled');
    } else {
      header.classList.remove('scrolled');
    }
  });
</script>

</body>
</html>