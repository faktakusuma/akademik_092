-- Skrip Data Sampel Akademik (Modul 6 Lengkap)
USE db_akademik_25430092;

-- Menonaktifkan pengecekan foreign key sementara agar bisa dikosongkan
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE detail_krs;
TRUNCATE TABLE krs;
TRUNCATE TABLE jadwal_kuliah;
TRUNCATE TABLE mata_kuliah;
TRUNCATE TABLE mahasiswa;
TRUNCATE TABLE dosen;
SET FOREIGN_KEY_CHECKS = 1;

-- 1. Mengisi Data Dosen
INSERT INTO dosen (nidn_dosen, nama_dosen) VALUES
('0012345601', 'Dr. Budi Santoso, M.Kom.'),
('0012345602', 'Siti Rahma, M.T.'),
('0012345603', 'Ahmad Fauzi, Ph.D.'),
('0012345604', 'Dewi Lestari, M.Cs.'),
('0012345605', 'Eko Prasetyo, M.T.');

-- 2. Mengisi Data Mahasiswa
INSERT INTO mahasiswa (nim_mahasiswa, nama_mahasiswa, prodi_mahasiswa, status_mahasiswa) VALUES
('25430092', 'Muhammad Fakta Kusuma', 'Ilmu Komputer', 'Aktif'),
('25430001', 'Andi Pratama', 'Ilmu Komputer', 'Aktif'),
('25430002', 'Rina Melati', 'Ilmu Komputer', 'Aktif'),
('25430003', 'Doni Setiawan', 'Sistem Informasi', 'Aktif'),
('25430004', 'Siska Amelia', 'Ilmu Komputer', 'Aktif');

-- 3. Mengisi Data Mata Kuliah
INSERT INTO mata_kuliah (kode_mk, nama_mk) VALUES
('IF101', 'Algoritma dan Pemrograman'),
('IF102', 'Basis Data'),
('IF103', 'Struktur Data'),
('IF104', 'Jaringan Komputer'),
('IF105', 'Sistem Operasi');

-- 4. Mengisi Data KRS
-- (Sesuaikan id_mahasiswa jika urutan auto-increment berbeda di database Anda)
INSERT INTO krs (no_krs, tgl_krs, id_mahasiswa, tahun_akademik) VALUES
('KRS-001', '2025-08-15', 6, '2025/2026'),
('KRS-002', '2025-08-15', 7, '2025/2026'),
('KRS-003', '2025-08-16', 8, '2025/2026'),
('KRS-004', '2025-08-16', 9, '2025/2026'),
('KRS-005', '2025-08-17', 10, '2025/2026');

-- 5. Mengisi Data Jadwal Kuliah
-- (id_matkul 1-5, id_dosen disesuaikan dengan ID dosen yang terbentuk, misal 26-30)
INSERT INTO jadwal_kuliah (id_matkul, id_dosen, hari_kuliah, jam_kuliah, ruang_kuliah) VALUES
(1, 26, 'Senin', '08:00:00', 'Lab Komputer 1'),
(2, 27, 'Selasa', '10:00:00', 'Ruang Teori 2'),
(3, 28, 'Rabu', '08:00:00', 'Lab Komputer 2'),
(4, 29, 'Kamis', '13:00:00', 'Ruang Teori 1'),
(5, 30, 'Jumat', '08:00:00', 'Lab Jaringan');

-- 6. Mengisi Data Detail KRS
-- (id_krs 1-4, id_jadwal disesuaikan dengan ID jadwal yang terbentuk, misal 6-10)
INSERT INTO detail_krs (id_krs, id_jadwal, nilai_huruf) VALUES
(1, 6, 'A'),
(1, 7, 'A-'),
(2, 6, 'B+'),
(3, 8, 'A'),
(4, 9, 'B');