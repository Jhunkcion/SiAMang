<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\URL;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Hindari error saat dijalankan lewat CLI (seperti php artisan migrate)
        if (app()->runningInConsole()) {
            return;
        }

        $host = request()->getHost();

        // Deteksi jika menggunakan ngrok (otomatis paksa HTTPS)
        if (str_contains($host, 'ngrok.io')) {
            URL::forceScheme('https');
            config(['app.url' => 'https://' . $host]);
        }
    }
}
