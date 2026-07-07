-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2026 at 05:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `role` enum('superadmin','admin') NOT NULL DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Administrator', 'admin', 'admin@portal.com', '$2y$10$5lEz80VPapsN7jRrrKcyZ.p938iSgIL28tGxmFwN1R6u5ezowlJrC', 'superadmin', '2026-06-08 03:20:52');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(10) UNSIGNED NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `gelar` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `gelar`) VALUES
(1, 'Henry Prasetyo', 'S.Si., M.T.'),
(2, 'Mochamad Arief S.', ''),
(3, 'Lasro P. Sihite', 'S.Pd., M.T.'),
(4, 'Dendi Kurniawan', 'S.T.'),
(5, 'M. Rikza', 'A.Md.'),
(6, 'Donny Muda P.', 'S.Kom., M.T.I.'),
(7, 'M. Ridwan Arif', 'S.T., M.T.'),
(8, 'Dr. Dharmanto', 'S.T., M.T.'),
(9, 'IGK. Rai Darmaja', 'S.Pd., S.Si.T., M.B.A.'),
(10, 'M. Ibnu Rusydi', 'S.Pd., M.Pd.'),
(11, 'Puguh Elmiawan', 'S.Pd., M.Pd.'),
(12, 'Ahmad Zohari', 'S.T., M.Eng.'),
(13, 'Ilham Taufik', ' S.S.T., M.T.'),
(14, 'Bibit Hartono', 'S.T., M.T.'),
(15, 'Indah Puspa Murni', 'S.T., M.Sc'),
(16, 'Tita Latifah Ahmad', 'S.T., M.T.'),
(17, 'Suharyati', 'S.Kom., M.Kom.'),
(18, 'Anis Choirunnisa', 'S.T., M.Kom.'),
(19, 'Dera Susilawati', 'S.Kom., M.Kom.'),
(20, 'Sulistiyono', 'S.Kom., M.Kom.');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(10) UNSIGNED NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `id_matkul` int(10) UNSIGNED NOT NULL,
  `id_dosen` int(10) UNSIGNED NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat') NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `ruangan` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_kelas`, `id_matkul`, `id_dosen`, `hari`, `jam_mulai`, `jam_selesai`, `ruangan`) VALUES
(1, 1, 1, 1, 'Senin', '07:30:00', '10:30:00', 'A1-04'),
(2, 1, 2, 2, 'Senin', '12:30:00', '14:30:00', 'A1-04'),
(3, 1, 3, 3, 'Selasa', '07:15:00', '10:30:00', 'A1-04'),
(4, 1, 4, 4, 'Selasa', '12:30:00', '14:30:00', 'A1-04'),
(5, 1, 5, 3, 'Selasa', '14:30:00', '16:30:00', 'A1-04'),
(6, 1, 6, 1, 'Rabu', '07:15:00', '09:15:00', 'A1-04'),
(7, 1, 4, 5, 'Rabu', '09:30:00', '11:30:00', 'A1-04'),
(8, 1, 7, 6, 'Rabu', '12:30:00', '16:30:00', 'A1-04'),
(9, 1, 8, 7, 'Kamis', '07:15:00', '09:15:00', 'A1-04'),
(10, 1, 9, 1, 'Kamis', '09:30:00', '11:30:00', 'A1-04'),
(11, 1, 10, 6, 'Kamis', '12:30:00', '14:30:00', 'A1-04'),
(12, 1, 11, 1, 'Kamis', '14:30:00', '16:30:00', 'A1-04'),
(13, 1, 12, 2, 'Jumat', '06:30:00', '09:30:00', 'Lapangan'),
(14, 2, 13, 8, 'Senin', '07:30:00', '09:30:00', 'A1-05'),
(15, 2, 6, 9, 'Senin', '09:30:00', '11:30:00', 'A1-05'),
(16, 2, 2, 2, 'Senin', '12:30:00', '14:30:00', 'A1-05'),
(17, 2, 1, 1, 'Selasa', '07:15:00', '11:30:00', 'A1-05'),
(18, 2, 7, 6, 'Selasa', '12:30:00', '16:30:00', 'A1-05'),
(19, 2, 3, 3, 'Rabu', '07:15:00', '09:15:00', 'A1-05'),
(20, 2, 4, 3, 'Rabu', '09:30:00', '11:30:00', 'A1-05'),
(21, 2, 4, 5, 'Rabu', '12:30:00', '14:30:00', 'A1-05'),
(22, 2, 5, 3, 'Rabu', '14:30:00', '16:30:00', 'A1-05'),
(23, 2, 9, 1, 'Kamis', '07:15:00', '09:15:00', 'A1-05'),
(24, 2, 4, 4, 'Kamis', '09:30:00', '11:30:00', 'A1-05'),
(25, 2, 10, 1, 'Kamis', '12:30:00', '14:30:00', 'A1-05'),
(26, 2, 8, 7, 'Kamis', '14:30:00', '16:30:00', 'A1-05'),
(27, 2, 12, 2, 'Jumat', '06:30:00', '09:30:00', 'Lapangan'),
(28, 2, 11, 1, 'Jumat', '13:00:00', '15:00:00', 'A1-05'),
(29, 3, 9, 10, 'Senin', '07:30:00', '09:30:00', 'B2-02'),
(30, 3, 15, 8, 'Senin', '09:30:00', '11:30:00', 'B2-02'),
(31, 3, 2, 2, 'Senin', '12:30:00', '14:30:00', 'B2-02'),
(32, 3, 16, 11, 'Selasa', '07:15:00', '09:15:00', 'B2-02'),
(33, 3, 17, 12, 'Selasa', '09:30:00', '11:30:00', 'B2-02'),
(34, 3, 18, 11, 'Selasa', '12:30:00', '14:30:00', 'B2-02'),
(35, 3, 19, 10, 'Selasa', '14:30:00', '16:30:00', 'B2-02'),
(36, 3, 20, 12, 'Rabu', '07:15:00', '11:30:00', 'B2-02'),
(37, 3, 20, 13, 'Rabu', '12:30:00', '14:30:00', 'B2-02'),
(38, 3, 21, 12, 'Kamis', '07:15:00', '09:15:00', 'B2-02'),
(39, 3, 22, 7, 'Kamis', '09:30:00', '11:30:00', 'B2-02'),
(40, 3, 23, 13, 'Kamis', '12:30:00', '14:30:00', 'B2-02'),
(41, 3, 24, 13, 'Kamis', '14:30:00', '16:30:00', 'B2-02'),
(42, 3, 12, 2, 'Jumat', '06:30:00', '09:30:00', 'Lapangan'),
(43, 3, 25, 14, 'Jumat', '13:00:00', '14:30:00', 'B2-02'),
(44, 4, 23, 13, 'Senin', '07:30:00', '09:30:00', 'D1-03'),
(45, 4, 26, 13, 'Senin', '09:30:00', '11:30:00', 'D1-03'),
(46, 4, 2, 2, 'Senin', '12:30:00', '14:30:00', 'D1-03'),
(47, 4, 16, 11, 'Selasa', '07:15:00', '09:15:00', 'D1-03'),
(48, 4, 19, 10, 'Selasa', '09:30:00', '11:30:00', 'D1-03'),
(49, 4, 22, 7, 'Selasa', '12:30:00', '14:30:00', 'D1-03'),
(50, 4, 17, 12, 'Selasa', '14:30:00', '16:30:00', 'D1-03'),
(51, 4, 15, 8, 'Rabu', '07:15:00', '09:15:00', 'D1-03'),
(52, 4, 18, 11, 'Rabu', '09:30:00', '11:30:00', 'D1-03'),
(53, 4, 25, 14, 'Rabu', '12:30:00', '14:30:00', 'D1-03'),
(54, 4, 9, 10, 'Rabu', '14:30:00', '16:30:00', 'D1-03'),
(55, 4, 20, 11, 'Kamis', '07:15:00', '11:30:00', 'D1-03'),
(56, 4, 20, 10, 'Kamis', '12:30:00', '14:30:00', 'D1-03'),
(57, 4, 21, 12, 'Kamis', '14:30:00', '16:30:00', 'D1-03'),
(58, 4, 12, 2, 'Jumat', '06:30:00', '09:30:00', 'Lapangan'),
(59, 4, 24, 12, 'Jumat', '13:00:00', '15:00:00', 'D1-03'),
(60, 5, 27, 15, 'Senin', '07:30:00', '09:30:00', 'B2-08'),
(61, 5, 28, 15, 'Senin', '09:30:00', '11:30:00', 'B2-08'),
(62, 5, 2, 2, 'Senin', '12:30:00', '14:30:00', 'B2-08'),
(63, 5, 29, 15, 'Selasa', '07:15:00', '11:30:00', 'B2-08'),
(64, 5, 30, 8, 'Selasa', '12:30:00', '16:30:00', 'B2-08'),
(65, 5, 31, 10, 'Rabu', '07:15:00', '09:15:00', 'B2-08'),
(66, 5, 32, 15, 'Rabu', '09:30:00', '11:30:00', 'B2-08'),
(67, 5, 33, 15, 'Rabu', '12:30:00', '16:30:00', 'B2-08'),
(68, 5, 34, 16, 'Kamis', '07:15:00', '09:15:00', 'B2-08'),
(69, 5, 35, 3, 'Kamis', '09:30:00', '11:30:00', 'B2-08'),
(70, 5, 36, 15, 'Kamis', '12:30:00', '14:30:00', 'B2-08'),
(71, 5, 9, 10, 'Kamis', '14:30:00', '16:30:00', 'B2-08'),
(72, 5, 12, 2, 'Jumat', '06:30:00', '09:30:00', 'Lapangan'),
(73, 5, 37, 7, 'Jumat', '13:00:00', '15:00:00', 'B2-08'),
(74, 6, 38, 6, 'Senin', '07:30:00', '11:30:00', 'B2-05'),
(75, 6, 2, 2, 'Senin', '12:30:00', '14:30:00', 'B2-04'),
(76, 6, 39, 17, 'Selasa', '07:15:00', '09:15:00', 'B2-04'),
(77, 6, 40, 17, 'Selasa', '09:30:00', '11:30:00', 'B2-04'),
(78, 6, 41, 19, 'Selasa', '12:30:00', '16:30:00', 'B2-05'),
(79, 6, 42, 18, 'Rabu', '07:15:00', '09:15:00', 'B2-04'),
(80, 6, 43, 7, 'Rabu', '09:30:00', '11:30:00', 'B2-04'),
(81, 6, 44, 1, 'Rabu', '12:30:00', '14:30:00', 'B2-04'),
(82, 6, 45, 1, 'Rabu', '14:30:00', '16:30:00', 'B2-04'),
(83, 6, 46, 6, 'Kamis', '07:15:00', '11:30:00', 'B2-05'),
(84, 6, 47, 7, 'Kamis', '12:30:00', '14:30:00', 'B2-04'),
(85, 6, 48, 20, 'Kamis', '14:30:00', '16:30:00', 'B2-04'),
(86, 6, 12, 2, 'Jumat', '06:30:00', '09:30:00', 'Lapangan'),
(87, 6, 49, 6, 'Jumat', '13:00:00', '15:00:00', 'B2-04');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_jurusan`
--

CREATE TABLE `kelas_jurusan` (
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `ruangan` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas_jurusan`
--

INSERT INTO `kelas_jurusan` (`id_kelas`, `nama_jurusan`, `nama_kelas`, `ruangan`) VALUES
(1, 'Teknik Elektronika', 'I A', 'A1-04'),
(2, 'Teknik Elektronika', 'I B', 'A1-05'),
(3, 'Teknik Mesin', 'I A', 'B2-02'),
(4, 'Teknik Mesin', 'I B', 'D1-03'),
(5, 'Teknologi Industri', 'I', 'B2-08'),
(6, 'Teknologi Informasi', 'I', 'B2-04');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `no_telepon` varchar(20) NOT NULL DEFAULT '',
  `tanggal_lahir` date DEFAULT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `id_kelas`, `email`, `no_telepon`, `tanggal_lahir`, `tahun_masuk`, `password`) VALUES
(1, 'Salma Suhaimah', '2504023', 6, 'salma123@gmail.com', '08991615750', '2007-11-21', '2025', '$2y$10$lwRI8jkRAQWtnUzip4i4pOrLdrmOKD6cXriHf/jtKrUIftMr9mZW.'),
(2, 'Budi Santoso', '2501002', 4, 'budi@email.com', '081234567890', '2007-05-10', '2025', '$2y$10$axeKPTG14FwBD3FPPApA0u1O.V9vKlzfg5.RJwxpX.j.PIjKs80tK'),
(3, 'Siti Rahayu', '2504010', 3, 'siti@email.com', '089876543210', '2007-08-20', '2025', '$2y$10$9IeaYH20QWCLrsBGBr6D..bUa54DXkliTF58cmpxv8v5OfUCdcqxK'),
(4, 'Rian Hidayat', '2501001', 2, 'rian.hidayat@email.com', '081234567811', '2007-03-12', '2025', '$2y$10$ueFE6JKr3dB3d5P5nSGSeeZ9XT92IGqSC9w5POwUSFCiG5qhuf9YS'),
(5, 'Eka Putri', '2502001', 2, 'eka.putri@email.com', '081234567812', '2006-11-24', '2025', '$2y$10$2TtL5bFKN1T5eL5WtKHxguJJBECMt.Mqxm3QxSvhMQ8hhWCMYaWly'),
(6, 'Fikri Haikal', '2503001', 5, 'fikri.haikal@email.com', '081234567813', '2007-08-05', '2025', '$2y$10$dC83jVMwJFk8lriy1YtR1Oj2r3wjVHissI/FwCX1TybLVo1yBWLPG'),
(7, 'Nisa Amelia', '2503002', 5, 'nisa.amelia@email.com', '081234567814', '2007-01-15', '2025', '$2y$10$QbPn0fuG9CPmQqfzZQlprejw0zbISkdJu0fiVgy51uwkYCxipNS8i'),
(8, 'Rizky Ramadhan', '2504015', 3, 'rizky.r@email.com', '081234567815', '2006-09-30', '2025', '$2y$10$65342YeFPQ/Nh2iFMvc5wuZcqD2X20pTnlCbvCP0AnMuv1tiGfmoG'),
(9, 'Siti Rahayu', '2502003', 3, 'siti@email.com', '089876543210', '2007-08-20', '2025', '$2y$10$03xS2NndXFkTtNQ5h/YvMusUcud9CpXt87nhIODhrpabbCJE/2VQi');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` int(10) UNSIGNED NOT NULL,
  `nama_matkul` varchar(150) NOT NULL,
  `tipe` enum('Teori','Praktek') NOT NULL DEFAULT 'Teori'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_matkul`, `nama_matkul`, `tipe`) VALUES
(1, 'Praktek Elektronika 2', 'Praktek'),
(2, 'PBB dan Mental Disiplin', 'Teori'),
(3, 'Mikrokontroller', 'Teori'),
(4, 'Praktek Mikrokontroller', 'Praktek'),
(5, 'Mekatronika', 'Teori'),
(6, 'Elektronika 2', 'Teori'),
(7, 'Praktek Pemrograman Website', 'Praktek'),
(8, 'Pemrograman Website', 'Teori'),
(9, 'Matematika Terapan 2', 'Teori'),
(10, 'Pemasaran', 'Teori'),
(11, 'Rangkaian Listrik 1', 'Teori'),
(12, 'Senam Pagi & 5R', 'Teori'),
(13, 'Gambar Listrik', 'Teori'),
(14, 'Matematika Terapan 2', 'Teori'),
(15, 'Statistika Dasar', 'Teori'),
(16, 'Manajemen Basic', 'Teori'),
(17, 'Getaran Permesinan', 'Teori'),
(18, 'Computer Aided Design', 'Praktek'),
(19, 'Teknik Komputer Lanjut', 'Teori'),
(20, 'Teknologi Mekanik 2', 'Praktek'),
(21, 'Elemen Mesin 1', 'Teori'),
(22, 'Termodinamika', 'Teori'),
(23, 'Ilmu Bahan', 'Teori'),
(24, 'Praktek Ilmu Bahan', 'Praktek'),
(25, 'Kontrol dan Otomasi', 'Teori'),
(26, 'Marketing', 'Teori'),
(27, 'Presentation Skill', 'Teori'),
(28, 'K3', 'Teori'),
(29, 'Akuntansi Biaya', 'Teori'),
(30, 'Teknologi Mekanik', 'Teori'),
(31, 'Mekanika Teknik', 'Teori'),
(32, 'Statistik Industri', 'Teori'),
(33, 'Praktik Statistik Industri', 'Praktek'),
(34, 'Manajemen Technology', 'Teori'),
(35, 'Teknik Tenaga Listrik Praktek', 'Praktek'),
(36, 'Basic Data Analysis', 'Teori'),
(37, 'Teknik Tenaga Listrik', 'Teori'),
(38, 'Praktek UI/UX', 'Praktek'),
(39, 'Rekayasa Perangkat Lunak', 'Teori'),
(40, 'Perancangan UI/UX', 'Teori'),
(41, 'Praktek PBO', 'Praktek'),
(42, 'Struktur Data', 'Teori'),
(43, 'Statistik', 'Teori'),
(44, 'Aljabar Linier', 'Teori'),
(45, 'Logika Matematika', 'Teori'),
(46, 'Praktek Kecerdasan Buatan', 'Praktek'),
(47, 'Pemrograman Berbasis Objek', 'Teori'),
(48, 'Python', 'Teori'),
(49, 'Kecerdasan Buatan', 'Teori');

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` int(10) UNSIGNED NOT NULL,
  `id_mahasiswa` int(10) UNSIGNED NOT NULL,
  `id_jadwal` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `status_kehadiran` enum('Hadir','Izin','Sakit','Alpa') NOT NULL DEFAULT 'Alpa',
  `keterangan` text DEFAULT NULL,
  `waktu_pencatatan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `id_mahasiswa`, `id_jadwal`, `tanggal`, `status_kehadiran`, `keterangan`, `waktu_pencatatan`) VALUES
(1, 1, 74, '2026-03-02', 'Hadir', NULL, '2026-03-02 00:32:00'),
(2, 1, 84, '2026-03-05', 'Hadir', NULL, '2026-03-05 05:35:00'),
(3, 1, 87, '2026-03-06', 'Hadir', NULL, '2026-03-06 06:05:00'),
(4, 1, 74, '2026-03-09', 'Hadir', NULL, '2026-03-09 00:30:00'),
(5, 1, 76, '2026-03-10', 'Hadir', NULL, '2026-03-10 00:20:00'),
(6, 1, 79, '2026-03-11', 'Hadir', NULL, '2026-03-11 00:18:00'),
(7, 1, 83, '2026-03-12', 'Alpa', NULL, '2026-03-12 16:59:00'),
(8, 1, 84, '2026-03-12', 'Hadir', NULL, '2026-03-12 05:33:00'),
(9, 1, 74, '2026-03-16', 'Hadir', NULL, '2026-03-16 00:35:00'),
(10, 1, 80, '2026-03-18', 'Hadir', NULL, '2026-03-18 02:32:00'),
(11, 1, 81, '2026-03-18', 'Hadir', NULL, '2026-03-18 05:32:00'),
(12, 1, 83, '2026-03-19', 'Izin', NULL, '2026-03-19 00:00:00'),
(13, 1, 87, '2026-03-20', 'Hadir', NULL, '2026-03-20 06:05:00'),
(14, 1, 74, '2026-03-23', 'Hadir', NULL, '2026-03-23 00:28:00'),
(15, 1, 76, '2026-03-24', 'Hadir', NULL, '2026-03-24 00:16:00'),
(16, 1, 83, '2026-03-26', 'Hadir', NULL, '2026-03-26 00:15:00'),
(17, 1, 84, '2026-03-26', 'Hadir', NULL, '2026-03-26 05:31:00'),
(18, 1, 79, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 09:49:48'),
(19, 1, 80, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 09:49:48'),
(20, 1, 81, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 09:49:48'),
(21, 1, 82, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 09:49:48'),
(22, 2, 6, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 10:00:55'),
(23, 2, 7, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 10:00:55'),
(24, 2, 8, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 10:00:55'),
(25, 6, 65, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 10:18:43'),
(26, 6, 66, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 10:18:43'),
(27, 6, 67, '2026-05-27', 'Alpa', 'Auto-recorded', '2026-05-27 10:18:43'),
(28, 1, 83, '2026-05-28', 'Hadir', '', '2026-05-28 00:46:03'),
(29, 6, 68, '2026-05-28', 'Sakit', 'sakit', '2026-05-28 01:29:37'),
(30, 6, 69, '2026-05-28', 'Alpa', 'Auto-recorded', '2026-05-28 04:56:44'),
(31, 6, 60, '2026-06-08', 'Hadir', '', '2026-06-08 02:17:05'),
(32, 1, 76, '2026-06-09', 'Hadir', '', '2026-06-09 01:29:23'),
(33, 6, 63, '2026-06-09', 'Sakit', 'demam', '2026-06-09 02:02:20'),
(34, 1, 77, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 05:52:56'),
(35, 1, 78, '2026-06-09', 'Hadir', '', '2026-06-09 05:53:06'),
(36, 6, 64, '2026-06-09', 'Sakit', 'demam', '2026-06-09 06:14:35'),
(37, 2, 47, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 08:47:37'),
(38, 2, 48, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 08:47:37'),
(39, 2, 49, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 08:47:37'),
(40, 2, 50, '2026-06-09', 'Hadir', '', '2026-06-09 08:47:50'),
(41, 5, 32, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 08:49:22'),
(42, 5, 33, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 08:49:22'),
(43, 5, 34, '2026-06-09', 'Alpa', 'Auto-recorded', '2026-06-09 08:49:22'),
(44, 1, 79, '2026-06-10', 'Alpa', 'Auto-recorded', '2026-06-10 02:34:34'),
(45, 1, 80, '2026-06-10', 'Hadir', '', '2026-06-10 02:34:44'),
(46, 5, 36, '2026-06-10', 'Hadir', '', '2026-06-10 03:03:52'),
(47, 1, 83, '2026-06-11', 'Hadir', '', '2026-06-11 01:01:56'),
(48, 5, 23, '2026-06-11', 'Alpa', 'Auto-recorded', '2026-06-11 02:40:05'),
(49, 4, 23, '2026-06-11', 'Alpa', 'Auto-recorded', '2026-06-11 02:41:35'),
(50, 7, 68, '2026-06-11', 'Alpa', 'Auto-recorded', '2026-06-11 02:47:11'),
(51, 1, 74, '2026-06-15', 'Hadir', '', '2026-06-15 02:06:54'),
(52, 1, 75, '2026-06-15', 'Alpa', 'Auto-recorded', '2026-06-15 08:47:42'),
(53, 4, 23, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(54, 5, 23, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(55, 3, 38, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(56, 8, 38, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(57, 9, 38, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(58, 6, 68, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(59, 7, 68, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(355, 4, 24, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(357, 5, 24, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(359, 3, 39, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(361, 8, 39, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(363, 9, 39, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(364, 2, 55, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(366, 6, 69, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(368, 7, 69, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(369, 1, 83, '2026-07-02', 'Alpa', 'Auto-recorded', '2026-07-02 06:39:54'),
(2450, 4, 14, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2451, 5, 14, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2452, 3, 29, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2453, 8, 29, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2454, 9, 29, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2455, 2, 44, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2456, 6, 60, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2457, 7, 60, '2026-07-06', 'Alpa', 'Auto-recorded', '2026-07-06 03:09:12'),
(2690, 1, 74, '2026-07-06', 'Hadir', '', '2026-07-06 02:45:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_matkul` (`id_matkul`),
  ADD KEY `id_dosen` (`id_dosen`),
  ADD KEY `idx_kelas_hari` (`id_kelas`,`hari`);

--
-- Indexes for table `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`),
  ADD UNIQUE KEY `uq_mahasiswa_jadwal_tanggal` (`id_mahasiswa`,`id_jadwal`,`tanggal`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `idx_mahasiswa_tanggal` (`id_mahasiswa`,`tanggal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `kelas_jurusan`
--
ALTER TABLE `kelas_jurusan`
  MODIFY `id_kelas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_matkul` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_presensi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2995;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas_jurusan` (`id_kelas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_matkul`) REFERENCES `mata_kuliah` (`id_matkul`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`) ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas_jurusan` (`id_kelas`) ON UPDATE CASCADE;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
