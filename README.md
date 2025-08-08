# 📋 SiAMang - Sistem Informasi Administrasi Magang

## 🎯 Deskripsi Proyek
SiAMang adalah sistem informasi berbasis web yang dirancang untuk mengelola proses administrasi pendaftaran magang secara digital. Sistem ini memudahkan mahasiswa dalam mendaftar magang dan admin dalam mengelola pendaftaran secara efisien.

## 🚀 Fitur Utama

### 👥 Untuk Mahasiswa
- **Pendaftaran Online**: Daftar magang secara digital tanpa antri
- **Upload Dokumen**: Upload CV, KTM, dan dokumen pendukung
- **Tracking Status**: Pantau status pendaftaran secara real-time
- **Cetak Bukti**: Cetak bukti pendaftaran setelah submit

### 🔧 Untuk Admin
- **Dashboard Admin**: Kelola semua pendaftaran dari satu tempat
- **Manajemen Persyaratan**: Atur persyaratan magang per periode
- **Approval System**: Approve/reject pendaftaran dengan mudah
- **Laporan**: Cetak laporan pendaftaran harian/bulanan
- **Manajemen User**: Kelola data mahasiswa dan admin

### 📊 Fitur Tambahan
- **Notifikasi Email**: Pemberitahuan otomatis via email
- **OTP Security**: Verifikasi email dengan kode OTP
- **Multi Kampus**: Dukungan untuk berbagai universitas
- **Responsive Design**: Akses dari HP atau laptop

## 🛠️ Teknologi yang Digunakan

### Backend
- **Framework**: Laravel 11.x
- **Database**: MySQL
- **Authentication**: Laravel Breeze
- **Admin Panel**: Filament Admin
- **Queue**: Laravel Queue untuk email

### Frontend
- **Template Engine**: Blade
- **CSS Framework**: Bootstrap 5
- **JavaScript**: Vanilla JS + Alpine.js
- **Icons**: Font Awesome

### Tools & Services
- **Email**: SMTP untuk notifikasi
- **Storage**: Local storage untuk file upload
- **Queue Worker**: Redis untuk background jobs

## 📦 Instalasi

### Prasyarat
- PHP 8.2 atau lebih baru
- Composer
- MySQL 8.0+
- Node.js & NPM

### Langkah Instalasi

1. **Clone Repository**
   ```bash
   git clone https://github.com/Jhunkcion/SiAMang.git
   cd SiAMang
   ```

2. **Install Dependencies**
   ```bash
   composer install
   npm install
   ```

3. **Setup Environment**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. **Konfigurasi Database**
   - Buat database baru di MySQL
   - Update `.env` dengan kredensial database

5. **Migrate Database**
   ```bash
   php artisan migrate
   php artisan db:seed
   ```

6. **Build Assets**
   ```bash
   npm run build
   ```

7. **Jalankan Server**
   ```bash
   php artisan serve
   ```

## 🔐 Login Default

### Admin
- **Email**: admin@example.com
- **Password**: password

### Mahasiswa
- **Email**: mahasiswa@example.com
- **Password**: password

## 📁 Struktur Folder

```
SiAMang/
├── app/
│   ├── Filament/Admin/      # Admin panel
│   ├── Http/Controllers/    # Logic aplikasi
│   ├── Models/              # Database models
│   └── Mail/                # Email templates
├── resources/
│   ├── views/               # Blade templates
│   ├── css/                 # Styles
│   └── js/                  # JavaScript
├── public/                  # Assets publik
├── routes/                  # Route definitions
└── storage/                 # File uploads
```

## 🎯 Cara Penggunaan

### Untuk Mahasiswa
1. **Registrasi**: Buat akun dengan email kampus
2. **Verifikasi**: Konfirmasi email dengan OTP
3. **Login**: Masuk dengan kredensial yang sudah dibuat
4. **Daftar Magang**: Isi form pendaftaran dan upload dokumen
5. **Cetak Bukti**: Download bukti pendaftaran

### Untuk Admin
1. **Login Admin**: Gunakan akun admin untuk masuk
2. **Dashboard**: Lihat semua pendaftaran
3. **Kelola Persyaratan**: Atur syarat magang per periode
4. **Proses Pendaftaran**: Review dan approve/reject pendaftaran
5. **Cetak Laporan**: Generate laporan pendaftaran

## 📊 API Endpoints

### Authentication
- `POST /register` - Registrasi mahasiswa
- `POST /login` - Login user
- `POST /logout` - Logout user
- `POST /verify-otp` - Verifikasi email

### Pendaftaran
- `GET /pendaftaran` - List semua pendaftaran
- `POST /pendaftaran` - Buat pendaftaran baru
- `GET /pendaftaran/{id}` - Detail pendaftaran
- `PUT /pendaftaran/{id}` - Update pendaftaran
- `DELETE /pendaftaran/{id}` - Hapus pendaftaran

## 🐛 Troubleshooting

### Masalah Umum
1. **Database Connection Error**
   - Pastikan MySQL berjalan
   - Cek konfigurasi `.env`

2. **Email Not Working**
   - Konfigurasi SMTP di `.env`
   - Jalankan queue worker: `php artisan queue:work`

3. **File Upload Error**
   - Cek permission folder `storage/`
   - Pastikan PHP upload limit cukup

### Command Berguna
```bash
# Clear cache
php artisan cache:clear
php artisan config:clear
php artisan route:clear

# Reset database
php artisan migrate:fresh --seed

# Check queue
php artisan queue:listen
```

## 🤝 Kontribusi

Kami terbuka untuk kontribusi! Silakan:
1. Fork repository ini
2. Buat branch fitur baru (`git checkout -b fitur-baru`)
3. Commit perubahan (`git commit -m 'Add fitur baru'`)
4. Push ke branch (`git push origin fitur-baru`)
5. Buat Pull Request

## 📞 Kontak

Untuk pertanyaan atau bantuan:
- **Email**: support@siamang.com
- **Issues**: [GitHub Issues](https://github.com/Jhunkcion/SiAMang/issues)

## 📄 Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE)

---

**Dibuat dengan ❤️ oleh Tim SiAMang**
