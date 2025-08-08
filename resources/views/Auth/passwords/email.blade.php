<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="theme-color" content="#0758bb">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <title>Forgot Password - Sistem Pendaftaran Magang</title>
    <link href="{{ asset('bootslander/assets/img/Logo.png') }}" rel="icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet">
    <link href="{{ asset('css/reset-password-enhanced.css') }}" rel="stylesheet">
    <style>
    :root {
        --imigrasi-green: #1acc8d;
        --imigrasi-blue: #0758bb;
        --imigrasi-light-blue: #3498db;
        --imigrasi-navy: #1b3f72;
        --imigrasi-gradient: linear-gradient(135deg, var(--imigrasi-navy) 0%, var(--imigrasi-blue) 50%, var(--imigrasi-light-blue) 100%);

        /* Responsive sizing variables */
        --card-padding-xl: 50px;
        --card-padding-lg: 45px 35px;
        --card-padding-md: 40px 30px;
        --card-padding-sm: 35px 25px;
        --card-padding-xs: 30px 20px;

        --input-padding-xl: 18px 25px;
        --input-padding-lg: 16px 22px;
        --input-padding-md: 15px 20px;
        --input-padding-sm: 14px 18px;
        --input-padding-xs: 12px 15px;

        --border-radius-xl: 30px;
        --border-radius-lg: 25px;
        --border-radius-md: 20px;
        --border-radius-sm: 18px;
        --border-radius-xs: 15px;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: 'Poppins', sans-serif;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        background: #f5f7fa;
        overflow-x: hidden;
        position: relative;
    }

    /* Enhanced Background with Simplified Gradient Animation */
    .background {
        position: absolute;
        width: 100%;
        height: 100%;
        background: var(--imigrasi-gradient);
        background-size: 300% 300%;
        animation: gradientBG 25s ease infinite;
        z-index: -3;
    }

    @keyframes gradientBG {
        0% {
            background-position: 0% 50%;
        }

        50% {
            background-position: 100% 50%;
        }

        100% {
            background-position: 0% 50%;
        }
    }

    /* Simplified Moving Blobs with Subtle Effect */
    .blob {
        position: absolute;
        border-radius: 50%;
        filter: blur(25px);
        opacity: 0.6;
        z-index: -2;
    }

    .blob1 {
        width: 300px;
        height: 300px;
        background: var(--imigrasi-green);
        top: 10%;
        left: 10%;
        animation: moveBlob1 30s infinite ease-in-out;
    }

    .blob2 {
        width: 250px;
        height: 250px;
        background: var(--imigrasi-light-blue);
        top: 60%;
        right: 10%;
        animation: moveBlob2 25s infinite ease-in-out;
    }

    .blob3 {
        width: 220px;
        height: 220px;
        background: var(--imigrasi-blue);
        bottom: 15%;
        left: 15%;
        animation: moveBlob3 28s infinite ease-in-out;
    }

    /* Simplified blob animations without rotation */
    @keyframes moveBlob1 {
        0% {
            transform: translate(0, 0) scale(1);
        }

        50% {
            transform: translate(40px, 40px) scale(1.1);
        }

        100% {
            transform: translate(0, 0) scale(1);
        }
    }

    @keyframes moveBlob2 {
        0% {
            transform: translate(0, 0) scale(1);
        }

        50% {
            transform: translate(-40px, 30px) scale(1.1);
        }

        100% {
            transform: translate(0, 0) scale(1);
        }
    }

    @keyframes moveBlob3 {
        0% {
            transform: translate(0, 0) scale(1);
        }

        50% {
            transform: translate(30px, -30px) scale(1.1);
        }

        100% {
            transform: translate(0, 0) scale(1);
        }
    }

    /* Simplified Wave Line Effect */
    .wave-line {
        position: absolute;
        width: 100%;
        height: 80px;
        background: linear-gradient(90deg, transparent, rgba(26, 204, 141, 0.1), transparent);
        opacity: 0.2;
        top: 40%;
        animation: waveMove 20s ease-in-out infinite;
    }

    @keyframes waveMove {
        0% {
            transform: translateX(-100%);
        }

        100% {
            transform: translateX(100%);
        }
    }

    /* Simplified Pulsing Circle */
    .pulse-circle {
        position: absolute;
        border-radius: 50%;
        width: 400px;
        height: 400px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: radial-gradient(circle, rgba(52, 152, 219, 0.1) 0%, rgba(52, 152, 219, 0.03) 60%, transparent 100%);
        animation: pulse 8s infinite ease-in-out;
        z-index: -2;
    }

    @keyframes pulse {
        0% {
            transform: translate(-50%, -50%) scale(0.9);
            opacity: 0.2;
        }

        50% {
            transform: translate(-50%, -50%) scale(1.1);
            opacity: 0.3;
        }

        100% {
            transform: translate(-50%, -50%) scale(0.9);
            opacity: 0.2;
        }
    }

    /* Simplified Particle Effect */
    .particle {
        position: absolute;
        border-radius: 50%;
        animation: floatParticles linear infinite;
        pointer-events: none;
    }

    .particle.green {
        background: var(--imigrasi-green);
        box-shadow: 0 0 8px rgba(26, 204, 141, 0.4);
    }

    .particle.white {
        background: rgba(255, 255, 255, 0.7);
        box-shadow: 0 0 8px rgba(255, 255, 255, 0.4);
    }

    @keyframes floatParticles {
        from {
            transform: translateY(100vh);
            opacity: 0;
        }

        10% {
            opacity: 0.7;
        }

        90% {
            opacity: 0.7;
        }

        to {
            transform: translateY(-20vh);
            opacity: 0;
        }
    }

    /* Light Rays Effect */
    .light-rays {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: -2;
        opacity: 0.4;
        overflow: hidden;
    }

    .light-ray {
        position: absolute;
        background: linear-gradient(to top, transparent, rgba(255, 255, 255, 0.2), transparent);
        transform-origin: bottom center;
        width: 5px;
        height: 100vh;
        animation: rayRotate 20s infinite linear;
    }

    @keyframes rayRotate {
        0% {
            transform: rotate(0deg) translateX(-50%);
            opacity: 0;
        }

        20% {
            opacity: 0.5;
        }

        40% {
            opacity: 0.7;
        }

        60% {
            opacity: 0.5;
        }

        100% {
            transform: rotate(360deg) translateX(-50%);
            opacity: 0;
        }
    }

    /* Glowing Dots Grid */
    .dots-grid {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: radial-gradient(circle at 15px 15px, rgba(255, 255, 255, 0.1) 2px, transparent 0);
        background-size: 30px 30px;
        z-index: -2;
        animation: moveDots 60s infinite linear;
    }

    @keyframes moveDots {
        0% {
            background-position: 0 0;
        }

        100% {
            background-position: 300px 300px;
        }
    }

    /* Modern Navbar with Simplified Glass Effect */
    .navbar {
        background-color: rgba(255, 255, 255, 0.9);
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        padding: 15px 30px;
        border-bottom: 1px solid rgba(26, 204, 141, 0.1);
        position: relative;
        z-index: 100;
    }

    .navbar a {
        color: var(--imigrasi-navy);
        font-weight: 600;
        text-decoration: none;
        transition: all 0.3s ease;
    }

    .navbar a:hover {
        color: var(--imigrasi-green);
    }

    .navbar-brand {
        font-size: 1.4rem;
        font-weight: 700;
        color: var(--imigrasi-navy) !important;
        display: flex;
        align-items: center;
    }

    .navbar .btn-primary {
        background: var(--imigrasi-gradient);
        border: none;
        color: white;
        padding: 8px 20px;
        border-radius: 8px;
        transition: all 0.3s ease;
        font-weight: 600;
        box-shadow: 0 4px 10px rgba(7, 88, 187, 0.2);
    }

    .navbar .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 15px rgba(7, 88, 187, 0.3);
    }

    /* Ultra Modern 3D Login Card */
    /* Modern Form Card with Simplified Effects */
    .card-login {
        border-radius: 20px;
        background: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(15px);
        -webkit-backdrop-filter: blur(15px);
        box-shadow: 0 15px 35px rgba(7, 88, 187, 0.12);
        padding: var(--card-padding-xl);
        width: 100%;
        max-width: 480px;
        position: relative;
        z-index: 1;
        border: 1px solid rgba(255, 255, 255, 0.8);
        transition: all 0.4s ease;
    }

    .card-login:hover {
        transform: translateY(-5px);
        box-shadow: 0 20px 40px rgba(7, 88, 187, 0.15);
    }

    .card-login h4 {
        color: var(--imigrasi-navy);
        font-weight: 700;
        margin-bottom: 10px;
        font-size: 32px;
        background: var(--imigrasi-gradient);
        -webkit-background-clip: text;
        background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .card-login p.text-muted {
        color: #718096 !important;
        margin-bottom: 30px;
        font-size: 1rem;
        font-weight: 500;
    }

    /* Simplified Form Controls */
    .form-control {
        background: rgba(255, 255, 255, 0.95);
        border: 2px solid #e2e8f0;
        border-radius: 12px;
        padding: 15px 20px;
        color: var(--imigrasi-navy);
        font-size: 1rem;
        transition: all 0.3s ease;
        margin-bottom: 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.02);
        -webkit-appearance: none;
    }

    .form-control:focus {
        background: white;
        border-color: var(--imigrasi-green);
        box-shadow: 0 0 0 4px rgba(26, 204, 141, 0.1);
    }

    .form-control::placeholder {
        color: #a0aec0;
        font-weight: 400;
    }

    .input-group {
        position: relative;
        margin-bottom: 20px;
    }

    .input-group .form-control {
        padding-left: 50px;
        margin-bottom: 0;
    }

    .input-icon {
        position: absolute;
        left: 20px;
        top: 50%;
        transform: translateY(-50%);
        color: var(--imigrasi-light-blue);
        z-index: 10;
        font-size: 1.1rem;
    }

    .input-group .form-control:focus+.input-icon {
        color: var(--imigrasi-green);
    }

    /* Simplified Login Button */
    .btn-login {
        background: var(--imigrasi-gradient);
        color: white;
        border: none;
        border-radius: 10px;
        font-weight: 600;
        padding: 15px 20px;
        width: 100%;
        cursor: pointer;
        transition: all 0.3s ease;
        margin-top: 15px;
        box-shadow: 0 8px 15px rgba(7, 88, 187, 0.2);
        font-size: 1rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        -webkit-tap-highlight-color: transparent;
    }

    .btn-login:hover {
        transform: translateY(-3px);
        box-shadow: 0 12px 20px rgba(7, 88, 187, 0.3);
    }

    .btn-login:active {
        transform: translateY(-1px);
    }

    .btn-login i {
        margin-right: 8px;
    }

    /* Enhanced Notification with Modern Design */
    .alert {
        background: rgba(255, 255, 255, 0.95);
        border-left: 5px solid #ff3b30;
        color: #e53e3e;
        border-radius: 18px;
        padding: 20px 25px;
        margin-bottom: 35px;
        box-shadow:
            0 10px 30px rgba(229, 62, 62, 0.15),
            0 5px 15px rgba(0, 0, 0, 0.05);
        border: 1px solid rgba(229, 62, 62, 0.2);
        transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        transform: translateY(-15px);
        opacity: 0;
        backdrop-filter: blur(10px);
        -webkit-backdrop-filter: blur(10px);
    }

    .alert.show {
        opacity: 1;
        transform: translateY(0);
    }

    .alert ul {
        margin-left: 20px;
        padding: 0;
    }

    .alert .btn-close {
        font-size: 0.9rem;
        opacity: 0.7;
        transition: all 0.3s ease;
    }

    .alert .btn-close:hover {
        opacity: 1;
        transform: rotate(90deg);
    }

    /* Comprehensive Responsive Enhancements - Simplified */
    @media (max-width: 1200px) {
        .card-login {
            max-width: 480px;
        }
    }

    @media (max-width: 992px) {
        .navbar {
            padding: 15px 30px;
        }

        .card-login {
            padding: 40px 30px;
        }
    }

    @media (max-width: 768px) {
        .navbar {
            padding: 15px 25px;
        }

        .card-login {
            padding: 35px 25px;
            max-width: 90%;
            margin: 20px auto;
        }

        .navbar-brand strong {
            font-size: 1.2rem;
        }

        .blob {
            opacity: 0.5;
            filter: blur(20px);
        }

        .blob1 {
            width: 250px;
            height: 250px;
        }

        .blob2 {
            width: 200px;
            height: 200px;
        }

        .blob3 {
            width: 180px;
            height: 180px;
        }
    }

    @media (max-width: 576px) {
        .navbar {
            padding: 12px 20px;
        }

        .navbar .btn-primary {
            padding: 8px 15px;
            font-size: 0.9rem;
        }

        .navbar-brand img {
            height: 38px;
        }

        .navbar-brand strong {
            font-size: 1.1rem;
        }

        .card-login {
            padding: 30px 20px;
            max-width: 95%;
            border-radius: 15px;
        }

        .card-login h4 {
            font-size: 26px;
        }

        .card-login p.text-muted {
            font-size: 0.95rem;
            margin-bottom: 25px;
        }

        .btn-login {
            padding: 12px 15px;
            font-size: 0.95rem;
        }

        .form-control {
            padding: 12px 15px;
            margin-bottom: 15px;
        }

        .input-group .form-control {
            padding-left: 45px;
        }

        .input-icon {
            left: 15px;
        }

        .input-group {
            margin-bottom: 15px;
        }
    }

    @media (max-width: 480px) {
        .navbar {
            padding: 10px 15px;
        }

        .navbar-brand img {
            height: 32px;
        }

        .navbar-brand strong {
            font-size: 1rem;
        }

        .form-check-input {
            width: 18px;
            height: 18px;
        }

        .form-check-label,
        .forgot-password a {
            font-size: 0.85rem;
        }

        .register-link {
            font-size: 0.9rem;
            margin-top: 25px;
        }

        /* Simplify for performance */
        .blob3 {
            display: none;
        }
    }

    /* Very small devices */
    @media (max-width: 350px) {
        .navbar-brand img {
            height: 30px;
        }

        .navbar-brand strong {
            font-size: 0.9rem;
        }

        .navbar a {
            font-size: 0.85rem;
        }

        .navbar .btn-primary {
            padding: 6px 12px;
            font-size: 0.85rem;
        }

        .card-login h4 {
            font-size: 24px;
        }

        .d-flex.justify-content-between.align-items-center {
            flex-direction: column;
            align-items: flex-start !important;
        }

        .forgot-password {
            text-align: left;
            margin-top: 10px;
        }
    }

    /* Enhanced Login animation */
    /* Simplified Login animation */
    .card-login {
        animation: simpleSlideUp 0.6s ease forwards;
    }

    @keyframes simpleSlideUp {
        0% {
            opacity: 0;
            transform: translateY(30px);
        }

        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Performance optimizations for animations */
    @media (prefers-reduced-motion: reduce) {
        * {
            animation-duration: 0.01ms !important;
            animation-iteration-count: 1 !important;
            transition-duration: 0.01ms !important;
            scroll-behavior: auto !important;
        }

        .blob,
        .wave-line,
        .pulse-circle,
        .particle {
            animation: none !important;
            opacity: 0.05 !important;
        }

        .card-login {
            animation: simpleDisplay 0.5s ease forwards !important;
        }

        @keyframes simpleDisplay {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .background {
            background: var(--imigrasi-gradient) !important;
            animation: none !important;
            background-size: 100% 100% !important;
        }
    }

    /* Add touch device optimizations */
    @media (hover: none) {

        .btn-login:hover,
        .navbar a:hover,
        .register-link a:hover,
        .forgot-password a:hover {
            transform: none !important;
        }

        .input-group:hover .input-icon {
            transform: translateY(-50%) !important;
        }
    }

    /* Fix for mobile browser viewport height issues */
    :root {
        --vh: 1vh;
    }

    body {
        min-height: 100vh;
        min-height: calc(var(--vh, 1vh) * 100);
    }

    /* Fix for vh units on mobile browsers */
    :root {
        --vh: 1vh;
    }

    body {
        min-height: 100vh;
        min-height: calc(var(--vh, 1vh) * 100);
    }
    </style>
    <script>
    // Fix for mobile browser viewport height issues
    function setVhVariable() {
        let vh = window.innerHeight * 0.01;
        document.documentElement.style.setProperty('--vh', `${vh}px`);
    }

    // Set on page load
    window.addEventListener('load', setVhVariable);

    // Update on resize and orientation change
    window.addEventListener('resize', setVhVariable);
    window.addEventListener('orientationchange', setVhVariable);

    // Simple error handling for animations
    window.addEventListener('error', function(e) {
        // If animation error occurs, disable all animations
        if (e.message && (e.message.includes('animation') || e.message.includes('transform'))) {
            document.body.classList.add('reduce-animations');
            console.log('Animation error detected, reducing animations');
        }
    });
    </script>
</head>

<body>

    <!-- Enhanced Background Animations -->
    <div class="background"></div>

    <!-- Moving Blobs with Enhanced Effects -->
    <div class="blob blob1"></div>
    <div class="blob blob2"></div>
    <div class="blob blob3"></div>
    <div class="blob blob4"></div>

    <!-- Enhanced Geometric Pattern -->
    <div class="pattern-overlay"></div>

    <!-- Animated Light Rays with Responsive Optimization -->
    <div class="light-rays">
        <script>
        // Create light rays with device-aware count
        const isMobile = window.innerWidth <= 768;
        const isSmallScreen = window.innerWidth <= 480;
        const rayCount = isSmallScreen ? 8 : (isMobile ? 12 : 20);

        for (let i = 0; i < rayCount; i++) {
            let ray = document.createElement("div");
            ray.classList.add("light-ray");

            // Position at center bottom
            ray.style.left = "50%";
            ray.style.bottom = "0";

            // Random width, thinner on mobile for better performance
            const widthMultiplier = isSmallScreen ? 0.7 : (isMobile ? 0.85 : 1);
            ray.style.width = (2 + Math.random() * 8) * widthMultiplier + "px";

            // Random animation delay, less variation on mobile
            const delayMultiplier = isMobile ? 0.7 : 1;
            ray.style.animationDelay = (Math.random() * 20) * delayMultiplier + "s";

            // Random opacity, slightly reduced on mobile
            const opacityMax = isSmallScreen ? 0.4 : (isMobile ? 0.45 : 0.5);
            ray.style.opacity = (Math.random() * opacityMax) + 0.1;

            document.querySelector(".light-rays").appendChild(ray);
        }
        </script>
    </div>

    <!-- Dots Grid Overlay -->
    <div class="dots-grid"></div>

    <!-- Enhanced 3D Wave Lines -->
    <div class="wave-line"></div>
    <div class="wave-line"></div>
    <div class="wave-line"></div>

    <!-- Enhanced Pulsing Circles -->
    <div class="pulse-circle"></div>
    <div class="pulse-circle"></div>
    <div class="pulse-circle"></div>

    <!-- Enhanced Particle Effects with Performance Optimizations -->
    <div class="particles">
        <script>
        // Create particles with device-aware count
        const isMobile = window.innerWidth <= 768;
        const isSmallScreen = window.innerWidth <= 480;
        const particleCount = isSmallScreen ? 20 : (isMobile ? 40 : 60);

        for (let i = 0; i < particleCount; i++) {
            let particle = document.createElement("div");
            particle.classList.add("particle");

            // Randomly assign particle types
            const types = ['green', 'blue', 'white'];
            const randomType = types[Math.floor(Math.random() * types.length)];
            particle.classList.add(randomType);

            // Random size based on type, smaller on mobile for better performance
            let sizeMultiplier = isSmallScreen ? 0.7 : (isMobile ? 0.85 : 1);
            let size;
            if (randomType === 'white') {
                size = (Math.random() * 4 + 2) * sizeMultiplier; // 2-6px adjusted
            } else {
                size = (Math.random() * 6 + 3) * sizeMultiplier; // 3-9px adjusted
            }

            particle.style.width = size + "px";
            particle.style.height = size + "px";

            // Random position
            particle.style.left = Math.random() * 100 + "vw";

            // Random animation duration, faster on mobile
            const durationMultiplier = isMobile ? 0.8 : 1;
            particle.style.animationDuration = (Math.random() * 15 + 10) * durationMultiplier + "s";

            // Random opacity
            particle.style.opacity = Math.random() * 0.7 + 0.2;

            // Random delay, less variation on mobile
            const delayMultiplier = isMobile ? 0.7 : 1;
            particle.style.animationDelay = Math.random() * 15 * delayMultiplier + "s";

            document.querySelector(".particles").appendChild(particle);
        }
        </script>
    </div>

    <!-- Modern Navbar with Enhanced Glass Effect -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center" href="/">
                <img src="{{ asset('bootslander/assets/img/fix.jpg') }}" alt="Logo" height="65" width="65" class="me-2">
                <div class="text-container d-flex flex-column align-items-start">
                    <h1 class="sitename mb-0" style="font-size: 1.5rem; font-weight: 700; line-height: 1.2;">SiAMang</h1>
                    <span class="description-title" style="font-size: 0.8rem; font-weight: 500; color: #6c757d; line-height: 1.1;">Sistem Informasi Anak Magang</span>
                </div>
            </a>
            <div>
                <a href="{{ route('login') }}" class="me-4">Login</a>
                <a href="{{ route('register') }}" class="btn btn-primary">Register</a>
            </div>
        </div>
    </nav>

    <!-- Enhanced Forgot Password Form -->
    <div class="container d-flex justify-content-center align-items-center flex-grow-1 py-5">
        <div class="card card-login">
            <div class="text-center mb-4">
                <h4>Forgot Password</h4>
                <p class="text-muted">Masukkan email Anda untuk menerima tautan reset password</p>
            </div>

            <!-- Enhanced Notification -->
            @if($errors->any())
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <script>
            // Enhanced animation for alert with error handling
            try {
                setTimeout(() => {
                    const alert = document.querySelector('.alert');
                    if (alert) alert.classList.add('show');
                }, 100);

                // Auto dismiss after 5 seconds
                setTimeout(() => {
                    const alert = document.querySelector('.alert');
                    if (alert) {
                        alert.classList.remove('show');
                        setTimeout(() => alert.remove(), 400);
                    }
                }, 5000);
            } catch (e) {
                console.log('Alert animation error:', e);
                // Fallback to basic display
                const alert = document.querySelector('.alert');
                if (alert) alert.style.display = 'block';
            }
            </script>
            @endif

            @if (session('status'))
            <div class="alert alert-success show" role="alert">
                {{ session('status') }}
            </div>
            @endif

            <form method="POST" action="{{ route('password.email') }}">
                @csrf
                <div class="input-group">
                    <input type="email" class="form-control" name="email" required placeholder="Email Anda"
                        value="{{ old('email') }}" autofocus>
                    <span class="input-icon">
                        <i class="fas fa-envelope"></i>
                    </span>
                </div>

                <button type="submit" class="btn-login">
                    <i class="fas fa-paper-plane me-2"></i> Kirim Tautan Reset
                </button>
            </form>

            <p class="text-center mt-4">
                <a href="{{ route('login') }}" class="text-decoration-none" style="color: var(--imigrasi-green);">
                    <i class="fas fa-arrow-left me-1"></i> Kembali ke Login
                </a>
            </p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
