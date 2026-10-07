-- =======================================================
-- SKRIP INISIALISASI LINGKUNGAN BUKTI PRAKTIKUM MODUL 1
-- Pengembang : M. Fakta Kusuma
-- NIM        : 25430092
-- Kelas      : D
-- =======================================================

-- 1. Konfigurasi Skema Basis Data Utama
create database if not exists mhs_092
  default character set utf8mb4
  default collate utf8mb4_unicode_ci;

-- Pembuatan Pengguna Kerja Utama & Pembatasan Akses
create user if not exists 'mhs_092'@'localhost' identified by '<password_kerja>';
grant all privileges on mhs_092.* to 'mhs_092'@'localhost';

-- Pembuatan Pengguna Hak Akses Khusus Read-Only
create user if not exists 'tamu_092'@'localhost' identified by '<password_kerja>';
grant select on mhs_092.* to 'tamu_092'@'localhost';

-- 2. Konfigurasi Skema Basis Data Proyek Mandiri
create database if not exists akad_092
  default character set utf8mb4
  default collate utf8mb4_unicode_ci;

-- Pembuatan Pengguna Pengembang Proyek
create user if not exists 'dev_092'@'localhost' identified by '<password_kerja>';
grant all privileges on akad_092.* to 'dev_092'@'localhost';

-- Penerapan Perubahan Wewenang Server
flush privileges;

/* 
  CATATAN DOKUMENTASI SINKRONISASI REPOSITORI (CLI LOG):
  -----------------------------------------------------
  $ git init
  $ git add README.md .gitignore laporan/ assets/ p01_lingkungan_25430092.sql
  $ git commit -m "feat: inisialisasi skrip lingkungan dan struktur repositori"
  $ git branch -M main
  $ git remote add origin https://github.com/faktakusuma/akademik_092.git
  $ git push -u origin main
*/