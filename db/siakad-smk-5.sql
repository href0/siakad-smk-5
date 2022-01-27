-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 06:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad-smk-5`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Data Siswa', 'siswa', 'fa fa-users', 0),
(2, 'Data Guru', 'guru', 'fa fa-user-circle', 0),
(3, 'Data Master', '#', 'fa fa-bars', 0),
(4, 'Mata Pelajaran', 'mapel', 'fa fa-book', 3),
(5, 'Ruangan Kelas', 'ruangan', 'fa fa-building', 3),
(6, 'Tingkatan Kelas', 'tingkatan', 'fa fa-sitemap', 3),
(7, 'Jurusan', 'jurusan', 'fa fa-th-large', 3),
(8, 'Tahun Akademik', 'tahunakademik', 'fa fa-calendar-check-o', 3),
(9, 'Kelas', 'kelas', 'fa fa-cubes', 3),
(10, 'Kurikulum', 'kurikulum', 'fa fa-list', 3),
(11, 'Jadwal Pelajaran', 'jadwal', 'fa fa-calendar-plus-o', 0),
(12, 'Peserta Didik', 'siswa/siswa_aktif', 'fa fa-users', 0),
(13, 'Walikelas', 'walikelas', 'fa fa-user-plus', 0),
(14, 'Pengguna Sistem', 'user', 'fa fa-id-badge', 0),
(15, 'Menu', 'menu', 'fa fa-list', 0),
(16, 'Form Pembayaran', 'pembayaran', 'fa fa-dollar', 0),
(17, 'Nilai', 'nilai', 'fa fa-archive', 0),
(19, 'Nilai Siswa', 'nilaisiswa', 'fa fa-book', 0),
(20, 'Laporan Nilai', 'laporan_nilai', 'fa fa-file-pdf-o', 0),
(21, 'Jadwal Siswa', 'jadwalsiswa', 'fa fa-calendar-plus-o', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `kd_agama` int(2) NOT NULL,
  `nama_agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`kd_agama`, `nama_agama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN/ PROTESTAN'),
(3, 'KATHOLIK'),
(4, 'HINDU'),
(5, 'BUDHA'),
(6, 'KHONG HU CHU'),
(99, 'LAIN LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id_guru` int(11) NOT NULL,
  `nuptk` varchar(11) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `gender` enum('P','W') NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id_guru`, `nuptk`, `nama_guru`, `gender`, `username`, `password`) VALUES
(0, '00000000000', 'Default', 'W', '', ''),
(9, '00000000001', 'Elisma Santo, S.Pt', 'P', 'elisma', 'e10adc3949ba59abbe56e057f20f883e'),
(10, '00000000002', 'Tarmizi, S.Ag', 'P', 'tarmizi', 'e10adc3949ba59abbe56e057f20f883e'),
(11, '00000000003', 'Iman Syafirman, SP', 'P', 'iman', 'e10adc3949ba59abbe56e057f20f883e'),
(12, '00000000004', 'Yersi Lindawati P,S.Pd', 'W', 'yersi', 'e10adc3949ba59abbe56e057f20f883e'),
(13, '00000000005', 'Reni Oktavia, S.Pd', 'W', 'reni', 'e10adc3949ba59abbe56e057f20f883e'),
(14, '00000000006', 'Nur Asia, S.Ag', 'W', 'nurasia', 'e10adc3949ba59abbe56e057f20f883e'),
(15, '00000000007', 'Asnil S.Pd', 'W', 'asnil', 'e10adc3949ba59abbe56e057f20f883e'),
(16, '00000000008', 'Anisa, S.Ag', 'W', 'anisa', 'e10adc3949ba59abbe56e057f20f883e'),
(17, '00000000009', 'Halimatussakdiah, SE', 'W', 'halima', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_tahun_akademik`, `semester`, `kd_jurusan`, `kd_tingkatan`, `kd_kelas`, `kd_mapel`, `id_guru`, `jam`, `kd_ruangan`, `hari`) VALUES
(163, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'BID', 9, '07.15 - 08.00', 'RG1', 'Senin'),
(164, 6, 'ganjil', 'ATP', '10', 'ATP1', 'BID', 0, '', '000', ''),
(165, 6, 'ganjil', 'BDP', '10', 'BDP1', 'BID', 0, '', '000', ''),
(166, 6, 'ganjil', 'KEP', '10', 'KES1', 'BID', 0, '', '000', ''),
(167, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'BID', 0, '', '000', ''),
(168, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'BID', 0, '', '000', ''),
(169, 6, 'ganjil', 'ATP', '11', 'ATP2', 'BID', 0, '', '000', ''),
(170, 6, 'ganjil', 'BDP', '11', 'BDP2', 'BID', 0, '', '000', ''),
(171, 6, 'ganjil', 'KEP', '11', 'KES2', 'BID', 0, '', '000', ''),
(172, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'BID', 0, '', '000', ''),
(173, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'BID', 0, '', '000', ''),
(174, 6, 'ganjil', 'ATP', '12', 'ATP3', 'BID', 0, '', '000', ''),
(175, 6, 'ganjil', 'BDP', '12', 'BDP3', 'BID', 0, '', '000', ''),
(176, 6, 'ganjil', 'KEP', '12', 'KES3', 'BID', 0, '', '000', ''),
(177, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'BID', 0, '', '000', ''),
(178, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'BING', 10, '08.00 - 08.45', 'RG1', 'Senin'),
(179, 6, 'ganjil', 'ATP', '10', 'ATP1', 'BING', 0, '', '000', ''),
(180, 6, 'ganjil', 'BDP', '10', 'BDP1', 'BING', 0, '', '000', ''),
(181, 6, 'ganjil', 'KEP', '10', 'KES1', 'BING', 0, '', '000', ''),
(182, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'BING', 0, '', '000', ''),
(183, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'BING', 0, '', '000', ''),
(184, 6, 'ganjil', 'ATP', '11', 'ATP2', 'BING', 0, '', '000', ''),
(185, 6, 'ganjil', 'BDP', '11', 'BDP2', 'BING', 0, '', '000', ''),
(186, 6, 'ganjil', 'KEP', '11', 'KES2', 'BING', 0, '', '000', ''),
(187, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'BING', 0, '', '000', ''),
(188, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'BING', 0, '', '000', ''),
(189, 6, 'ganjil', 'ATP', '12', 'ATP3', 'BING', 0, '', '000', ''),
(190, 6, 'ganjil', 'BDP', '12', 'BDP3', 'BING', 0, '', '000', ''),
(191, 6, 'ganjil', 'KEP', '12', 'KES3', 'BING', 0, '', '000', ''),
(192, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'BING', 0, '', '000', ''),
(193, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'MTK', 11, '10.00 - 10.45', 'RG1', 'Senin'),
(194, 6, 'ganjil', 'ATP', '10', 'ATP1', 'MTK', 0, '', '000', ''),
(195, 6, 'ganjil', 'BDP', '10', 'BDP1', 'MTK', 0, '', '000', ''),
(196, 6, 'ganjil', 'KEP', '10', 'KES1', 'MTK', 0, '', '000', ''),
(197, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'MTK', 0, '', '000', ''),
(198, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'MTK', 0, '', '000', ''),
(199, 6, 'ganjil', 'ATP', '11', 'ATP2', 'MTK', 0, '', '000', ''),
(200, 6, 'ganjil', 'BDP', '11', 'BDP2', 'MTK', 0, '', '000', ''),
(201, 6, 'ganjil', 'KEP', '11', 'KES2', 'MTK', 0, '', '000', ''),
(202, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'MTK', 0, '', '000', ''),
(203, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'MTK', 0, '', '000', ''),
(204, 6, 'ganjil', 'ATP', '12', 'ATP3', 'MTK', 0, '', '000', ''),
(205, 6, 'ganjil', 'BDP', '12', 'BDP3', 'MTK', 0, '', '000', ''),
(206, 6, 'ganjil', 'KEP', '12', 'KES3', 'MTK', 0, '', '000', ''),
(207, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'MTK', 0, '', '000', ''),
(208, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'PAI', 12, '08.00 - 08.45', 'RG1', 'Rabu'),
(209, 6, 'ganjil', 'ATP', '10', 'ATP1', 'PAI', 0, '', '000', ''),
(210, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'PAI', 0, '', '000', ''),
(211, 6, 'ganjil', 'KEP', '10', 'KES1', 'PAI', 0, '', '000', ''),
(212, 6, 'ganjil', 'BDP', '10', 'BDP1', 'PAI', 0, '', '000', ''),
(213, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'PAI', 0, '', '000', ''),
(214, 6, 'ganjil', 'ATP', '11', 'ATP2', 'PAI', 0, '', '000', ''),
(215, 6, 'ganjil', 'BDP', '11', 'BDP2', 'PAI', 0, '', '000', ''),
(216, 6, 'ganjil', 'KEP', '11', 'KES2', 'PAI', 0, '', '000', ''),
(217, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'PAI', 0, '', '000', ''),
(218, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'PAI', 0, '', '000', ''),
(219, 6, 'ganjil', 'ATP', '12', 'ATP3', 'PAI', 0, '', '000', ''),
(220, 6, 'ganjil', 'BDP', '12', 'BDP3', 'PAI', 0, '', '000', ''),
(221, 6, 'ganjil', 'KEP', '12', 'KES3', 'PAI', 0, '', '000', ''),
(222, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'PAI', 0, '', '000', ''),
(223, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'BID', 9, '08.00 - 08.45', 'RG1', 'Selasa'),
(224, 6, 'ganjil', 'ATP', '10', 'ATP1', 'BID', 0, '', '000', ''),
(225, 6, 'ganjil', 'BDP', '10', 'BDP1', 'BID', 0, '', '000', ''),
(226, 6, 'ganjil', 'KEP', '10', 'KES1', 'BID', 0, '', '000', ''),
(227, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'BID', 0, '', '000', ''),
(228, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'BID', 0, '', '000', ''),
(229, 6, 'ganjil', 'ATP', '11', 'ATP2', 'BID', 0, '', '000', ''),
(230, 6, 'ganjil', 'BDP', '11', 'BDP2', 'BID', 0, '', '000', ''),
(231, 6, 'ganjil', 'KEP', '11', 'KES2', 'BID', 0, '', '000', ''),
(232, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'BID', 0, '', '000', ''),
(233, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'BID', 0, '', '000', ''),
(234, 6, 'ganjil', 'ATP', '12', 'ATP3', 'BID', 0, '', '000', ''),
(235, 6, 'ganjil', 'BDP', '12', 'BDP3', 'BID', 0, '', '000', ''),
(236, 6, 'ganjil', 'KEP', '12', 'KES3', 'BID', 0, '', '000', ''),
(237, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'BID', 0, '', '000', ''),
(238, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'BING', 10, '08.45 - 09.30', 'RG1', 'Selasa'),
(239, 6, 'ganjil', 'ATP', '10', 'ATP1', 'BING', 0, '', '000', ''),
(240, 6, 'ganjil', 'BDP', '10', 'BDP1', 'BING', 0, '', '000', ''),
(241, 6, 'ganjil', 'KEP', '10', 'KES1', 'BING', 0, '', '000', ''),
(242, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'BING', 0, '', '000', ''),
(243, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'BING', 0, '', '000', ''),
(244, 6, 'ganjil', 'ATP', '11', 'ATP2', 'BING', 0, '', '000', ''),
(245, 6, 'ganjil', 'BDP', '11', 'BDP2', 'BING', 0, '', '000', ''),
(246, 6, 'ganjil', 'KEP', '11', 'KES2', 'BING', 0, '', '000', ''),
(247, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'BING', 0, '', '000', ''),
(248, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'BING', 0, '', '000', ''),
(249, 6, 'ganjil', 'ATP', '12', 'ATP3', 'BING', 0, '', '000', ''),
(250, 6, 'ganjil', 'BDP', '12', 'BDP3', 'BING', 0, '', '000', ''),
(251, 6, 'ganjil', 'KEP', '12', 'KES3', 'BING', 0, '', '000', ''),
(252, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'BING', 0, '', '000', ''),
(253, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'MTK', 11, '10.00 - 10.45', 'RG1', 'Selasa'),
(254, 6, 'ganjil', 'ATP', '10', 'ATP1', 'MTK', 0, '', '000', ''),
(255, 6, 'ganjil', 'BDP', '10', 'BDP1', 'MTK', 0, '', '000', ''),
(256, 6, 'ganjil', 'KEP', '10', 'KES1', 'MTK', 0, '', '000', ''),
(257, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'MTK', 0, '', '000', ''),
(258, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'MTK', 0, '', '000', ''),
(259, 6, 'ganjil', 'ATP', '11', 'ATP2', 'MTK', 0, '', '000', ''),
(260, 6, 'ganjil', 'BDP', '11', 'BDP2', 'MTK', 0, '', '000', ''),
(261, 6, 'ganjil', 'KEP', '11', 'KES2', 'MTK', 0, '', '000', ''),
(262, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'MTK', 0, '', '000', ''),
(263, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'MTK', 0, '', '000', ''),
(264, 6, 'ganjil', 'ATP', '12', 'ATP3', 'MTK', 0, '', '000', ''),
(265, 6, 'ganjil', 'BDP', '12', 'BDP3', 'MTK', 0, '', '000', ''),
(266, 6, 'ganjil', 'KEP', '12', 'KES3', 'MTK', 0, '', '000', ''),
(267, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'MTK', 0, '', '000', ''),
(268, 6, 'ganjil', 'AKUN', '10', 'AKUN1', 'PAI', 12, '08.00 - 08.45', 'RG1', 'Kamis'),
(269, 6, 'ganjil', 'ATP', '10', 'ATP1', 'PAI', 0, '', '000', ''),
(270, 6, 'ganjil', 'TBSM', '10', 'TBSM1', 'PAI', 0, '', '000', ''),
(271, 6, 'ganjil', 'KEP', '10', 'KES1', 'PAI', 0, '', '000', ''),
(272, 6, 'ganjil', 'BDP', '10', 'BDP1', 'PAI', 0, '', '000', ''),
(273, 6, 'ganjil', 'AKUN', '11', 'AKUN2', 'PAI', 0, '', '000', ''),
(274, 6, 'ganjil', 'ATP', '11', 'ATP2', 'PAI', 0, '', '000', ''),
(275, 6, 'ganjil', 'BDP', '11', 'BDP2', 'PAI', 0, '', '000', ''),
(276, 6, 'ganjil', 'KEP', '11', 'KES2', 'PAI', 0, '', '000', ''),
(277, 6, 'ganjil', 'TBSM', '11', 'TBSM2', 'PAI', 0, '', '000', ''),
(278, 6, 'ganjil', 'AKUN', '12', 'AKUN3', 'PAI', 0, '', '000', ''),
(279, 6, 'ganjil', 'ATP', '12', 'ATP3', 'PAI', 0, '', '000', ''),
(280, 6, 'ganjil', 'BDP', '12', 'BDP3', 'PAI', 0, '', '000', ''),
(281, 6, 'ganjil', 'KEP', '12', 'KES3', 'PAI', 0, '', '000', ''),
(282, 6, 'ganjil', 'TBSM', '12', 'TBSM3', 'PAI', 0, '', '000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('AKUN', 'Akuntansi & Keuangan Lembaga'),
('ATP', 'Agribisnis Tanaman Perkebunan'),
('BDP', 'Bisnis Daring & Pemasaran'),
('KEP', 'Asisten Keperawatan'),
('TBSM', 'Teknik Bisnis Sepeda Motor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kd_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kd_kelas`, `nama_kelas`, `kd_tingkatan`, `kd_jurusan`) VALUES
('AKUN1', 'Kelas X-AKUN', '10', 'AKUN'),
('AKUN2', 'Kelas XI-AKUN', '11', 'AKUN'),
('AKUN3', 'Kelas XII-AKUN', '12', 'AKUN'),
('ATP1', 'Kelas X-ATP', '10', 'ATP'),
('ATP2', 'Kelas XI-ATP', '11', 'ATP'),
('ATP3', 'Kelas XII-ATP', '12', 'ATP'),
('BDP1', 'Kelas X-BDP', '10', 'BDP'),
('BDP2', 'Kelas XI-BDP', '11', 'BDP'),
('BDP3', 'Kelas XII-BDP', '12', 'BDP'),
('KES1', 'Kelas X-KES', '10', 'KEP'),
('KES2', 'Kelas XI-KES', '11', 'KEP'),
('KES3', 'Kelas XII-KES', '12', 'KEP'),
('TBSM1', 'Kelas X-TBSM', '10', 'TBSM'),
('TBSM2', 'Kelas XI-TBSM', '11', 'TBSM'),
('TBSM3', 'KElas XII-TBSM', '12', 'TBSM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum`
--

CREATE TABLE `tbl_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama_kurikulum` varchar(30) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum`
--

INSERT INTO `tbl_kurikulum` (`id_kurikulum`, `nama_kurikulum`, `is_aktif`) VALUES
(1, 'Kurikulum 2013 (K13)', 'Y'),
(2, 'Kurikulum 2006 (KTSP)', 'N'),
(3, 'Kurikulum 2004 (KBK)', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum_detail`
--

CREATE TABLE `tbl_kurikulum_detail` (
  `id_kurikulum_detail` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum_detail`
--

INSERT INTO `tbl_kurikulum_detail` (`id_kurikulum_detail`, `id_kurikulum`, `kd_mapel`, `kd_jurusan`, `kd_tingkatan`) VALUES
(48, 1, 'BID', 'AKUN', '10'),
(49, 1, 'BID', 'ATP', '10'),
(50, 1, 'BID', 'BDP', '10'),
(51, 1, 'BID', 'KEP', '10'),
(52, 1, 'BID', 'TBSM', '10'),
(53, 1, 'BID', 'AKUN', '11'),
(54, 1, 'BID', 'ATP', '11'),
(55, 1, 'BID', 'BDP', '11'),
(56, 1, 'BID', 'KEP', '11'),
(57, 1, 'BID', 'TBSM', '11'),
(58, 1, 'BID', 'AKUN', '12'),
(59, 1, 'BID', 'ATP', '12'),
(60, 1, 'BID', 'BDP', '12'),
(61, 1, 'BID', 'KEP', '12'),
(62, 1, 'BID', 'TBSM', '12'),
(63, 1, 'BING', 'AKUN', '10'),
(64, 1, 'BING', 'ATP', '10'),
(65, 1, 'BING', 'BDP', '10'),
(66, 1, 'BING', 'KEP', '10'),
(67, 1, 'BING', 'TBSM', '10'),
(68, 1, 'BING', 'AKUN', '11'),
(69, 1, 'BING', 'ATP', '11'),
(70, 1, 'BING', 'BDP', '11'),
(71, 1, 'BING', 'KEP', '11'),
(72, 1, 'BING', 'TBSM', '11'),
(73, 1, 'BING', 'AKUN', '12'),
(74, 1, 'BING', 'ATP', '12'),
(75, 1, 'BING', 'BDP', '12'),
(76, 1, 'BING', 'KEP', '12'),
(77, 1, 'BING', 'TBSM', '12'),
(78, 1, 'MTK', 'AKUN', '10'),
(79, 1, 'MTK', 'ATP', '10'),
(80, 1, 'MTK', 'BDP', '10'),
(82, 1, 'MTK', 'KEP', '10'),
(83, 1, 'MTK', 'TBSM', '10'),
(84, 1, 'MTK', 'AKUN', '11'),
(85, 1, 'MTK', 'ATP', '11'),
(86, 1, 'MTK', 'BDP', '11'),
(87, 1, 'MTK', 'KEP', '11'),
(88, 1, 'MTK', 'TBSM', '11'),
(89, 1, 'MTK', 'AKUN', '12'),
(90, 1, 'MTK', 'ATP', '12'),
(91, 1, 'MTK', 'BDP', '12'),
(92, 1, 'MTK', 'KEP', '12'),
(93, 1, 'MTK', 'TBSM', '12'),
(94, 1, 'PAI', 'AKUN', '10'),
(95, 1, 'PAI', 'ATP', '10'),
(96, 1, 'PAI', 'TBSM', '10'),
(97, 1, 'PAI', 'KEP', '10'),
(98, 1, 'PAI', 'BDP', '10'),
(99, 1, 'PAI', 'AKUN', '11'),
(100, 1, 'PAI', 'ATP', '11'),
(101, 1, 'PAI', 'BDP', '11'),
(102, 1, 'PAI', 'KEP', '11'),
(103, 1, 'PAI', 'TBSM', '11'),
(104, 1, 'PAI', 'AKUN', '12'),
(105, 1, 'PAI', 'ATP', '12'),
(106, 1, 'PAI', 'BDP', '12'),
(107, 1, 'PAI', 'KEP', '12'),
(108, 1, 'PAI', 'TBSM', '12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Walikelas'),
(3, 'Guru'),
(4, 'Keuangan'),
(5, 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `kd_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`kd_mapel`, `nama_mapel`) VALUES
('BID', 'Bahasa Indonesia'),
('BING', 'Bahasa Inggris'),
('MTK', 'Matematika'),
('PAI', 'Pendidikan Agama Islam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_jadwal`, `nim`, `nilai`) VALUES
(40, 178, '1968', 80),
(41, 179, '1968', 80),
(42, 180, '1968', 80),
(43, 181, '1968', 80),
(44, 182, '1968', 80),
(45, 183, '1968', 80),
(46, 184, '1968', 80),
(47, 185, '1968', 80),
(48, 186, '1968', 80),
(49, 187, '1968', 80),
(50, 188, '1968', 80),
(51, 189, '1968', 80),
(52, 190, '1968', 80),
(53, 191, '1968', 80),
(54, 192, '1968', 80),
(55, 238, '1968', 80),
(56, 239, '1968', 80),
(57, 240, '1968', 80),
(58, 241, '1968', 80),
(59, 242, '1968', 80),
(60, 243, '1968', 80),
(61, 244, '1968', 80),
(62, 245, '1968', 80),
(63, 246, '1968', 80),
(64, 247, '1968', 80),
(65, 248, '1968', 80),
(66, 249, '1968', 80),
(67, 250, '1968', 80),
(68, 251, '1968', 80),
(69, 252, '1968', 80),
(70, 178, '1969', 89),
(71, 179, '1969', 89),
(72, 180, '1969', 89),
(73, 181, '1969', 89),
(74, 182, '1969', 89),
(75, 183, '1969', 89),
(76, 184, '1969', 89),
(77, 185, '1969', 89),
(78, 186, '1969', 89),
(79, 187, '1969', 89),
(80, 188, '1969', 89),
(81, 189, '1969', 89),
(82, 190, '1969', 89),
(83, 191, '1969', 89),
(84, 192, '1969', 89),
(85, 238, '1969', 89),
(86, 239, '1969', 89),
(87, 240, '1969', 89),
(88, 241, '1969', 89),
(89, 242, '1969', 89),
(90, 243, '1969', 89),
(91, 244, '1969', 89),
(92, 245, '1969', 89),
(93, 246, '1969', 89),
(94, 247, '1969', 89),
(95, 248, '1969', 89),
(96, 249, '1969', 89),
(97, 250, '1969', 89),
(98, 251, '1969', 89),
(99, 252, '1969', 89),
(100, 178, '1971', 78),
(101, 179, '1971', 78),
(102, 180, '1971', 78),
(103, 181, '1971', 78),
(104, 182, '1971', 78),
(105, 183, '1971', 78),
(106, 184, '1971', 78),
(107, 185, '1971', 78),
(108, 186, '1971', 78),
(109, 187, '1971', 78),
(110, 188, '1971', 78),
(111, 189, '1971', 78),
(112, 190, '1971', 78),
(113, 191, '1971', 78),
(114, 192, '1971', 78),
(115, 238, '1971', 78),
(116, 239, '1971', 78),
(117, 240, '1971', 78),
(118, 241, '1971', 78),
(119, 242, '1971', 78),
(120, 243, '1971', 78),
(121, 244, '1971', 78),
(122, 245, '1971', 78),
(123, 246, '1971', 78),
(124, 247, '1971', 78),
(125, 248, '1971', 78),
(126, 249, '1971', 78),
(127, 250, '1971', 78),
(128, 251, '1971', 78),
(129, 252, '1971', 78),
(130, 163, '1968', 78),
(131, 164, '1968', 78),
(132, 165, '1968', 78),
(133, 166, '1968', 78),
(134, 167, '1968', 78),
(135, 168, '1968', 78),
(136, 169, '1968', 78),
(137, 170, '1968', 78),
(138, 171, '1968', 78),
(139, 172, '1968', 78),
(140, 173, '1968', 78),
(141, 174, '1968', 78),
(142, 175, '1968', 78),
(143, 176, '1968', 78),
(144, 177, '1968', 78),
(145, 223, '1968', 78),
(146, 224, '1968', 78),
(147, 225, '1968', 78),
(148, 226, '1968', 78),
(149, 227, '1968', 78),
(150, 228, '1968', 78),
(151, 229, '1968', 78),
(152, 230, '1968', 78),
(153, 231, '1968', 78),
(154, 232, '1968', 78),
(155, 233, '1968', 78),
(156, 234, '1968', 78),
(157, 235, '1968', 78),
(158, 236, '1968', 78),
(159, 237, '1968', 78),
(160, 163, '1969', 88),
(161, 164, '1969', 88),
(162, 165, '1969', 88),
(163, 166, '1969', 88),
(164, 167, '1969', 88),
(165, 168, '1969', 88),
(166, 169, '1969', 88),
(167, 170, '1969', 88),
(168, 171, '1969', 88),
(169, 172, '1969', 88),
(170, 173, '1969', 88),
(171, 174, '1969', 88),
(172, 175, '1969', 88),
(173, 176, '1969', 88),
(174, 177, '1969', 88),
(175, 223, '1969', 88),
(176, 224, '1969', 88),
(177, 225, '1969', 88),
(178, 226, '1969', 88),
(179, 227, '1969', 88),
(180, 228, '1969', 88),
(181, 229, '1969', 88),
(182, 230, '1969', 88),
(183, 231, '1969', 88),
(184, 232, '1969', 88),
(185, 233, '1969', 88),
(186, 234, '1969', 88),
(187, 235, '1969', 88),
(188, 236, '1969', 88),
(189, 237, '1969', 88),
(190, 163, '1971', 67),
(191, 164, '1971', 67),
(192, 165, '1971', 67),
(193, 166, '1971', 67),
(194, 167, '1971', 67),
(195, 168, '1971', 67),
(196, 169, '1971', 67),
(197, 170, '1971', 67),
(198, 171, '1971', 67),
(199, 172, '1971', 67),
(200, 173, '1971', 67),
(201, 174, '1971', 67),
(202, 175, '1971', 67),
(203, 176, '1971', 67),
(204, 177, '1971', 67),
(205, 223, '1971', 67),
(206, 224, '1971', 67),
(207, 225, '1971', 67),
(208, 226, '1971', 67),
(209, 227, '1971', 67),
(210, 228, '1971', 67),
(211, 229, '1971', 67),
(212, 230, '1971', 67),
(213, 231, '1971', 67),
(214, 232, '1971', 67),
(215, 233, '1971', 67),
(216, 234, '1971', 67),
(217, 235, '1971', 67),
(218, 236, '1971', 67),
(219, 237, '1971', 67),
(220, 193, '1968', 69),
(221, 194, '1968', 69),
(222, 195, '1968', 69),
(223, 196, '1968', 69),
(224, 197, '1968', 69),
(225, 198, '1968', 69),
(226, 199, '1968', 69),
(227, 200, '1968', 69),
(228, 201, '1968', 69),
(229, 202, '1968', 69),
(230, 203, '1968', 69),
(231, 204, '1968', 69),
(232, 205, '1968', 69),
(233, 206, '1968', 69),
(234, 207, '1968', 69),
(235, 253, '1968', 69),
(236, 254, '1968', 69),
(237, 255, '1968', 69),
(238, 256, '1968', 69),
(239, 257, '1968', 69),
(240, 258, '1968', 69),
(241, 259, '1968', 69),
(242, 260, '1968', 69),
(243, 261, '1968', 69),
(244, 262, '1968', 69),
(245, 263, '1968', 69),
(246, 264, '1968', 69),
(247, 265, '1968', 69),
(248, 266, '1968', 69),
(249, 267, '1968', 69),
(250, 193, '1969', 89),
(251, 194, '1969', 89),
(252, 195, '1969', 89),
(253, 196, '1969', 89),
(254, 197, '1969', 89),
(255, 198, '1969', 89),
(256, 199, '1969', 89),
(257, 200, '1969', 89),
(258, 201, '1969', 89),
(259, 202, '1969', 89),
(260, 203, '1969', 89),
(261, 204, '1969', 89),
(262, 205, '1969', 89),
(263, 206, '1969', 89),
(264, 207, '1969', 89),
(265, 253, '1969', 89),
(266, 254, '1969', 89),
(267, 255, '1969', 89),
(268, 256, '1969', 89),
(269, 257, '1969', 89),
(270, 258, '1969', 89),
(271, 259, '1969', 89),
(272, 260, '1969', 89),
(273, 261, '1969', 89),
(274, 262, '1969', 89),
(275, 263, '1969', 89),
(276, 264, '1969', 89),
(277, 265, '1969', 89),
(278, 266, '1969', 89),
(279, 267, '1969', 89),
(280, 193, '1971', 88),
(281, 194, '1971', 88),
(282, 195, '1971', 88),
(283, 196, '1971', 88),
(284, 197, '1971', 88),
(285, 198, '1971', 88),
(286, 199, '1971', 88),
(287, 200, '1971', 88),
(288, 201, '1971', 88),
(289, 202, '1971', 88),
(290, 203, '1971', 88),
(291, 204, '1971', 88),
(292, 205, '1971', 88),
(293, 206, '1971', 88),
(294, 207, '1971', 88),
(295, 253, '1971', 88),
(296, 254, '1971', 88),
(297, 255, '1971', 88),
(298, 256, '1971', 88),
(299, 257, '1971', 88),
(300, 258, '1971', 88),
(301, 259, '1971', 88),
(302, 260, '1971', 88),
(303, 261, '1971', 88),
(304, 262, '1971', 88),
(305, 263, '1971', 88),
(306, 264, '1971', 88),
(307, 265, '1971', 88),
(308, 266, '1971', 88),
(309, 267, '1971', 88),
(310, 208, '1968', 88),
(311, 209, '1968', 88),
(312, 210, '1968', 88),
(313, 211, '1968', 88),
(314, 212, '1968', 88),
(315, 213, '1968', 88),
(316, 214, '1968', 88),
(317, 215, '1968', 88),
(318, 216, '1968', 88),
(319, 217, '1968', 88),
(320, 218, '1968', 88),
(321, 219, '1968', 88),
(322, 220, '1968', 88),
(323, 221, '1968', 88),
(324, 222, '1968', 88),
(325, 268, '1968', 88),
(326, 269, '1968', 88),
(327, 270, '1968', 88),
(328, 271, '1968', 88),
(329, 272, '1968', 88),
(330, 273, '1968', 88),
(331, 274, '1968', 88),
(332, 275, '1968', 88),
(333, 276, '1968', 88),
(334, 277, '1968', 88),
(335, 278, '1968', 88),
(336, 279, '1968', 88),
(337, 280, '1968', 88),
(338, 281, '1968', 88),
(339, 282, '1968', 88),
(340, 208, '1969', 59),
(341, 209, '1969', 59),
(342, 210, '1969', 59),
(343, 211, '1969', 59),
(344, 212, '1969', 59),
(345, 213, '1969', 59),
(346, 214, '1969', 59),
(347, 215, '1969', 59),
(348, 216, '1969', 59),
(349, 217, '1969', 59),
(350, 218, '1969', 59),
(351, 219, '1969', 59),
(352, 220, '1969', 59),
(353, 221, '1969', 59),
(354, 222, '1969', 59),
(355, 268, '1969', 59),
(356, 269, '1969', 59),
(357, 270, '1969', 59),
(358, 271, '1969', 59),
(359, 272, '1969', 59),
(360, 273, '1969', 59),
(361, 274, '1969', 59),
(362, 275, '1969', 59),
(363, 276, '1969', 59),
(364, 277, '1969', 59),
(365, 278, '1969', 59),
(366, 279, '1969', 59),
(367, 280, '1969', 59),
(368, 281, '1969', 59),
(369, 282, '1969', 59),
(370, 208, '1971', 98),
(371, 209, '1971', 98),
(372, 210, '1971', 98),
(373, 211, '1971', 98),
(374, 212, '1971', 98),
(375, 213, '1971', 98),
(376, 214, '1971', 98),
(377, 215, '1971', 98),
(378, 216, '1971', 98),
(379, 217, '1971', 98),
(380, 218, '1971', 98),
(381, 219, '1971', 98),
(382, 220, '1971', 98),
(383, 221, '1971', 98),
(384, 222, '1971', 98),
(385, 268, '1971', 98),
(386, 269, '1971', 98),
(387, 270, '1971', 98),
(388, 271, '1971', 98),
(389, 272, '1971', 98),
(390, 273, '1971', 98),
(391, 274, '1971', 98),
(392, 275, '1971', 98),
(393, 276, '1971', 98),
(394, 277, '1971', 98),
(395, 278, '1971', 98),
(396, 279, '1971', 98),
(397, 280, '1971', 98),
(398, 281, '1971', 98),
(399, 282, '1971', 98);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riwayat_kelas`
--

CREATE TABLE `tbl_riwayat_kelas` (
  `id_riwayat` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_riwayat_kelas`
--

INSERT INTO `tbl_riwayat_kelas` (`id_riwayat`, `kd_kelas`, `nim`, `id_tahun_akademik`) VALUES
(1, '7-A1', '18SI1000', 1),
(2, '7-A1', '18SI1001', 1),
(3, '7-A1', '18SI1002', 1),
(4, '7-A1', '18SI1003', 1),
(5, '7-A1', '18TI2000', 1),
(6, '7-A1', '18TI2001', 1),
(7, '7-A1', '18TI2002', 1),
(8, '7-A1', '18TI2003', 1),
(9, '7-A1', '', 1),
(10, '8-A1', '14.12.8199', 1),
(11, '8-B1', '14.12.8198', 1),
(12, '12-A1', '099210312', 6),
(13, '10-A1', '01920121', 6),
(14, 'TBSM1', '1942', 6),
(15, 'TBSM1', '1943', 6),
(16, 'TBSM1', '1915', 6),
(17, 'TBSM1', '1945', 6),
(18, 'ATP1', '1913', 6),
(19, 'ATP1', '1914', 6),
(20, 'ATP1', '1944', 6),
(21, 'AKUN1', '1968', 6),
(22, 'AKUN1', '1969', 6),
(23, 'AKUN1', '1971', 6),
(24, 'BDP1', '1997', 6),
(25, 'BDP1', '1998', 6),
(26, 'BDP1', '1999', 6),
(27, 'KES1', '1894', 6),
(28, 'KES1', '1895', 6),
(29, 'KES1', '1896', 6),
(30, 'AKUN2', '1837', 6),
(31, 'AKUN2', '1838', 6),
(32, 'AKUN2', '1839', 6),
(33, 'BDP2', '1863', 6),
(34, 'BDP2', '1864', 6),
(35, 'BDP2', '1866', 6),
(36, 'ATP2', '1788', 6),
(37, 'ATP2', '1789', 6),
(38, 'ATP2', '1790', 6),
(39, 'TBSM2', '1811', 6),
(40, 'TBSM2', '1812', 6),
(41, 'TBSM2', '18148', 6),
(42, 'KES2', '1770', 6),
(43, 'KES2', '1771', 6),
(44, 'KES2', '1772', 6),
(45, 'TBSM3', '1632', 6),
(46, 'TBSM3', '1633', 6),
(47, 'TBSM3', '1635', 6),
(48, 'AKUN3', '1704', 6),
(49, 'AKUN3', '1705', 6),
(50, 'AKUN3', '1706', 6),
(51, 'BDP3', '1736', 6),
(52, 'BDP3', '1737', 6),
(53, 'BDP3', '1738', 6),
(54, 'ATP3', '1679', 6),
(55, 'ATP3', '1680', 6),
(56, 'ATP3', '1681', 6),
(57, 'KES3', '1664', 6),
(58, 'KES3', '1665', 6),
(59, 'KES3', '1666', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`kd_ruangan`, `nama_ruangan`) VALUES
('000', 'Default'),
('RG1', 'Ruangan 1'),
('RG2', 'Ruangan 2'),
('RG3', 'Ruangan 3'),
('RG4', 'Ruangan 4'),
('RG5', 'Ruangan 5'),
('RG6', 'Ruangan 6'),
('RG7', 'Ruangan 7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `kd_agama` int(2) NOT NULL,
  `foto` text NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`username`, `password`, `nim`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `kd_agama`, `foto`, `kd_kelas`) VALUES
('', '', '1632', 'HERU GUNAWAN', 'L', '2003-03-25', 'Pemunduran', 1, 'user-siluet.jpg', 'TBSM3'),
('', '', '1633', 'ILHAM FIRMANSYAH', 'L', '2005-11-16', 'Pulau Mentaro', 1, 'user-siluet.jpg', 'TBSM3'),
('', '', '1635', 'LANANG OKTAVIAWAN', 'L', '2003-10-16', 'Mekarsari', 1, 'user-siluet.jpg', 'TBSM3'),
('', '', '1664', 'ROHILI ANGGREINI', '', '2002-09-18', 'Sul - Tra', 1, 'user-siluet.jpg', 'KES3'),
('', '', '1665', 'SILVIA', 'P', '2003-01-21', 'Sungai Bungur', 1, 'user-siluet.jpg', 'KES3'),
('', '', '1666', 'TIARA LESTARI', 'P', '2003-08-09', 'Manis Mato', 1, 'user-siluet.jpg', 'KES3'),
('', '', '1679', 'ERIK KESUMA', 'L', '2004-05-03', 'Ramin', 1, 'user-siluet.jpg', 'ATP3'),
('', '', '1680', 'EVAN SYAIFANI', 'L', '2004-04-21', 'Ramin', 1, 'user-siluet.jpg', 'ATP3'),
('', '', '1681', 'JOKO FAJAR TIRTO', 'L', '2004-04-06', 'Muaro Jambi', 1, 'user-siluet.jpg', 'ATP3'),
('', '', '1704', 'HENA PEBRIANTI', 'P', '2004-02-02', 'Pematang Raman', 1, 'user-siluet.jpg', 'AKUN3'),
('', '', '1705', 'HILDA NURDIANAH', 'P', '2004-01-04', 'Arang-arang', 1, 'user-siluet.jpg', 'AKUN3'),
('', '', '1706', 'IDA AGUSTIN', 'P', '2003-05-03', 'Muaro Jambi', 1, 'user-siluet.jpg', 'AKUN3'),
('', '', '1736', 'M. DIMAS ALFARIZI PUTRA', 'L', '2004-09-18', 'Puding', 1, 'user-siluet.jpg', 'BDP3'),
('', '', '1737', 'MARZANUL HIKMAH', 'P', '2005-03-06', 'Pulau Mentaro', 1, 'user-siluet.jpg', 'BDP3'),
('', '', '1738', 'MEYLIN LARASATI', 'P', '2004-05-17', 'Betung', 1, 'user-siluet.jpg', 'BDP3'),
('', '', '1770', 'ADINDA AMELIA LUBIS', 'P', '2004-03-15', 'Arang-arang', 1, 'user-siluet.jpg', 'KES2'),
('', '', '1771', 'ADITYA SANJAYA', 'L', '2004-12-06', 'Mekarsari', 1, 'user-siluet.jpg', 'KES2'),
('', '', '1772', 'ANGGI', 'P', '2005-02-19', 'Pematang Bedaro', 1, 'user-siluet.jpg', 'KES2'),
('', '', '1788', 'AGUNG RIDOYONO HULU', 'L', '2005-06-27', 'Jambi', 2, 'user-siluet.jpg', 'ATP2'),
('', '', '1789', 'AHMAD SIDIK MUHTAKIM', 'L', '2005-03-22', 'Mekarsari', 1, 'user-siluet.jpg', 'ATP2'),
('', '', '1790', 'ALAMSYAH', 'L', '2005-07-14', 'Puding', 1, 'user-siluet.jpg', 'ATP2'),
('', '', '1811', 'AHMAD RIDWAN', 'L', '2003-12-22', 'Pemunduran', 1, 'user-siluet.jpg', 'TBSM2'),
('', '', '1812', 'ALVIN', 'L', '2004-11-23', 'Teluk Raya', 1, 'user-siluet.jpg', 'TBSM2'),
('', '', '18148', 'APRILIANTO', 'L', '2005-04-13', 'Palembang', 1, 'user-siluet.jpg', 'TBSM2'),
('', '', '1837', 'A. SENDI IRWANSYAH', 'L', '2005-09-08', 'Betung', 1, 'user-siluet.jpg', 'AKUN2'),
('', '', '1838', 'ADINDA', 'P', '2005-05-25', 'Sipin Teluk Duren', 1, 'user-siluet.jpg', 'AKUN2'),
('', '', '1839', 'AHMAD ARIFIN', 'P', '2004-09-24', 'Muaro Jambi', 1, 'user-siluet.jpg', 'AKUN2'),
('', '', '1863', 'ABELIA AZRIANI', 'P', '2005-06-30', 'Pulau Mentaro', 1, 'user-siluet.jpg', 'BDP2'),
('', '', '1864', 'ANDIPAN', 'L', '2005-07-31', 'Sipin Teluk Duren', 1, 'user-siluet.jpg', 'BDP2'),
('', '', '1866', 'APRILIANA INTAN PRATIWI', 'P', '2005-04-15', 'Muaro Jambi', 1, 'user-siluet.jpg', 'BDP2'),
('', '', '1894', 'APRIANTI MAULINI', 'P', '2006-04-27', 'Pematang Raman', 1, 'user-siluet.jpg', 'KES1'),
('', '', '1895', 'AYUNI', 'P', '2005-08-13', 'Bangso', 1, 'user-siluet.jpg', 'KES1'),
('', '', '1896', 'CAHYA CANDA WULANDARI', 'P', '2006-01-12', 'Petanang', 1, 'user-siluet.jpg', 'KES1'),
('', '', '1913', 'ABIMANYU PRAMUDA', 'L', '2006-05-19', 'Jambi', 1, '', 'ATP1'),
('', '', '1914', 'ADE RAHMAN', 'L', '2006-06-07', 'Pulau Mentaro', 1, '', 'ATP1'),
('', '', '1915', 'ADEN PRAYOGA', 'L', '2005-08-02', 'Pematang Raman', 1, '', 'TBSM1'),
('', '', '1942', 'ADIL AGUNG WIRANATA', 'L', '2005-10-08', 'Jambi', 1, '', 'TBSM1'),
('', '', '1943', 'ADIT SAPUTRA', 'L', '2006-05-17', 'Jambi', 1, '', 'TBSM1'),
('', '', '1944', 'ADITYA', 'L', '2006-03-23', 'Lambur', 1, '', 'ATP1'),
('', '', '1945', 'AHMAD ZULKIFLI', 'L', '2005-12-21', 'Muaro Jambi', 1, '', 'TBSM1'),
('', '', '1968', 'AL RAMADHANI', 'L', '2005-08-07', 'Pematang Bedaro', 1, '', 'AKUN1'),
('amelia', 'e10adc3949ba59abbe56e057f20f883e', '1969', 'AMELIA SEVIANTI', 'P', '2005-12-15', 'Enok', 1, 'user-siluet.jpg', 'AKUN1'),
('', '', '1971', 'ANGGUN ANDRIANI', 'P', '2005-11-12', 'Muaro Jambi', 1, 'user-siluet.jpg', 'AKUN1'),
('', '', '1997', 'ADINE FAREL FIANDO', 'L', '2006-06-14', 'Ramin', 1, 'user-siluet.jpg', 'BDP1'),
('', '', '1998', 'AGINI PERMATA SARI', 'P', '2006-01-09', 'Muaro Jambi', 1, 'user-siluet.jpg', 'BDP1'),
('', '', '1999', 'AMI FITRIANI', 'P', '2007-11-10', 'Pematang Bedaro', 1, 'user-siluet.jpg', 'BDP1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_akademik`
--

CREATE TABLE `tbl_tahun_akademik` (
  `id_tahun_akademik` int(11) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tahun_akademik`
--

INSERT INTO `tbl_tahun_akademik` (`id_tahun_akademik`, `tahun_akademik`, `is_aktif`, `semester`) VALUES
(1, '2018/2019', 'N', 'ganjil'),
(2, '2017/2018', 'N', 'genap'),
(5, '2019/2020', 'N', 'genap'),
(6, '2021/2022', 'Y', 'ganjil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan_kelas`
--

CREATE TABLE `tbl_tingkatan_kelas` (
  `kd_tingkatan` varchar(5) NOT NULL,
  `nama_tingkatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tingkatan_kelas`
--

INSERT INTO `tbl_tingkatan_kelas` (`kd_tingkatan`, `nama_tingkatan`) VALUES
('10', 'Tingkat Kelas 10 (X)'),
('11', 'Tingkat Kelas 11 (XI)'),
('12', 'Tingkat Kelas 12 (XII)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`) VALUES
(1, 'Admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 'user-siluet2.jpg'),
(2, 'Muhammad Mulvi', 'mulvi', 'e10adc3949ba59abbe56e057f20f883e', 2, 'user-siluet1.jpg'),
(3, 'Ika Nurul Fadhila', 'ika', 'e10adc3949ba59abbe56e057f20f883e', 4, 'user-siluet3.jpg'),
(4, 'Hermansyah', 'herman', 'e10adc3949ba59abbe56e057f20f883e', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 16, 4),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 8, 1),
(9, 11, 1),
(10, 6, 1),
(11, 14, 1),
(12, 15, 1),
(13, 13, 1),
(14, 12, 1),
(15, 10, 1),
(16, 9, 1),
(17, 11, 3),
(19, 17, 3),
(20, 18, 3),
(21, 12, 3),
(22, 19, 5),
(23, 20, 3),
(24, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walikelas`
--

CREATE TABLE `tbl_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_walikelas`
--

INSERT INTO `tbl_walikelas` (`id_walikelas`, `id_guru`, `id_tahun_akademik`, `kd_kelas`) VALUES
(1, 10, 6, 'AKUN1'),
(2, 2, 6, '10-A1'),
(3, 3, 6, '11-A1'),
(4, 0, 1, '7-B2'),
(5, 0, 1, '8-A1'),
(6, 0, 1, '8-A2'),
(7, 0, 1, '8-B1'),
(8, 0, 1, '8-B2'),
(9, 0, 1, '9-A1'),
(10, 0, 1, '9-A2'),
(11, 0, 1, '9-B1'),
(12, 0, 1, '9-B2'),
(13, 0, 6, '7-A1'),
(14, 0, 6, '7-A2'),
(15, 0, 6, '7-B1'),
(16, 0, 6, '7-B2'),
(17, 0, 6, '8-A1'),
(18, 0, 6, '8-A2'),
(19, 0, 6, '8-B1'),
(20, 0, 6, '8-B2'),
(21, 0, 6, '9-A1'),
(22, 0, 6, '9-A2'),
(23, 0, 6, '9-B1'),
(24, 0, 6, '9-B2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kelas`
-- (See below for the actual view)
--
CREATE TABLE `view_kelas` (
`kd_kelas` varchar(5)
,`nama_kelas` varchar(30)
,`kd_tingkatan` varchar(5)
,`kd_jurusan` varchar(5)
,`nama_tingkatan` varchar(30)
,`nama_jurusan` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user`
-- (See below for the actual view)
--
CREATE TABLE `view_user` (
`id_user` int(11)
,`nama_lengkap` varchar(40)
,`username` varchar(30)
,`password` varchar(40)
,`id_level_user` int(11)
,`foto` text
,`nama_level` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_walikelas`
-- (See below for the actual view)
--
CREATE TABLE `view_walikelas` (
`nama_guru` varchar(40)
,`nama_kelas` varchar(30)
,`id_walikelas` int(11)
,`id_tahun_akademik` int(11)
,`nama_jurusan` varchar(30)
,`nama_tingkatan` varchar(30)
,`tahun_akademik` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `view_kelas`
--
DROP TABLE IF EXISTS `view_kelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kelas`  AS SELECT `tk`.`kd_kelas` AS `kd_kelas`, `tk`.`nama_kelas` AS `nama_kelas`, `tk`.`kd_tingkatan` AS `kd_tingkatan`, `tk`.`kd_jurusan` AS `kd_jurusan`, `ttk`.`nama_tingkatan` AS `nama_tingkatan`, `tj`.`nama_jurusan` AS `nama_jurusan` FROM ((`tbl_kelas` `tk` join `tbl_tingkatan_kelas` `ttk`) join `tbl_jurusan` `tj`) WHERE `tk`.`kd_tingkatan` = `ttk`.`kd_tingkatan` AND `tk`.`kd_jurusan` = `tj`.`kd_jurusan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_user`
--
DROP TABLE IF EXISTS `view_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user`  AS SELECT `tu`.`id_user` AS `id_user`, `tu`.`nama_lengkap` AS `nama_lengkap`, `tu`.`username` AS `username`, `tu`.`password` AS `password`, `tu`.`id_level_user` AS `id_level_user`, `tu`.`foto` AS `foto`, `tlu`.`nama_level` AS `nama_level` FROM (`tbl_user` `tu` join `tbl_level_user` `tlu`) WHERE `tu`.`id_level_user` = `tlu`.`id_level_user` ;

-- --------------------------------------------------------

--
-- Structure for view `view_walikelas`
--
DROP TABLE IF EXISTS `view_walikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_walikelas`  AS SELECT `tg`.`nama_guru` AS `nama_guru`, `tk`.`nama_kelas` AS `nama_kelas`, `tw`.`id_walikelas` AS `id_walikelas`, `tw`.`id_tahun_akademik` AS `id_tahun_akademik`, `tj`.`nama_jurusan` AS `nama_jurusan`, `ttk`.`nama_tingkatan` AS `nama_tingkatan`, `tta`.`tahun_akademik` AS `tahun_akademik` FROM (((((`tbl_walikelas` `tw` join `tbl_kelas` `tk`) join `tbl_guru` `tg`) join `tbl_jurusan` `tj`) join `tbl_tingkatan_kelas` `ttk`) join `tbl_tahun_akademik` `tta`) WHERE `tw`.`kd_kelas` = `tk`.`kd_kelas` AND `tw`.`id_guru` = `tg`.`id_guru` AND `tk`.`kd_jurusan` = `tj`.`kd_jurusan` AND `tk`.`kd_tingkatan` = `ttk`.`kd_tingkatan` AND `tw`.`id_tahun_akademik` = `tta`.`id_tahun_akademik` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  ADD PRIMARY KEY (`id_kurikulum_detail`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `tbl_tingkatan_kelas`
--
ALTER TABLE `tbl_tingkatan_kelas`
  ADD PRIMARY KEY (`kd_tingkatan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  MODIFY `id_kurikulum_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  MODIFY `id_tahun_akademik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_walikelas`
--
ALTER TABLE `tbl_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
