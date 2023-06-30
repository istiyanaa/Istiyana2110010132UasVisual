-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 11:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbma_smiip_banjarmasin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_hubungan`
--

CREATE TABLE `tabel_hubungan` (
  `id_hubungan` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_ortu` int(10) NOT NULL,
  `status_hubungan` enum('Kandung','Tiri','','') NOT NULL,
  `keterangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_hubungan`
--

INSERT INTO `tabel_hubungan` (`id_hubungan`, `id_siswa`, `id_ortu`, `status_hubungan`, `keterangan`) VALUES
(21100, 3456, 987, 'Kandung', 'Tidak Ada'),
(21200, 6789, 986, 'Tiri', 'Tidak Ada');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kelas`
--

CREATE TABLE `tabel_kelas` (
  `id_kelas` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jurusan` enum('IPA','IPS','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id_kelas`, `nama`, `jurusan`) VALUES
(1234, 'Rara', 'IPA'),
(3478, 'zidan', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_otang_tua`
--

CREATE TABLE `tabel_otang_tua` (
  `id_ortu` int(10) NOT NULL,
  `nik` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pendidikan` enum('TK','SD','SMP','SMA','D3','S1') NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `telp` int(12) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `agama` enum('Islam','Kristen','Hindu','Budha') NOT NULL,
  `status` enum('Hidup','Meninggal','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_otang_tua`
--

INSERT INTO `tabel_otang_tua` (`id_ortu`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `status`) VALUES
(112, 123456, 'Nadia', 'S1', 'Guru', 98654235, 'Banjar', 'P', 'Islam', 'Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_poin`
--

CREATE TABLE `tabel_poin` (
  `id_poin` int(10) NOT NULL,
  `nama_poin` varchar(20) NOT NULL,
  `bobot` int(12) NOT NULL,
  `jenis` enum('Pelanggaran','Prestasi','','') NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_poin`
--

INSERT INTO `tabel_poin` (`id_poin`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(5678, 'Datang terlambat', 5, 'Pelanggaran', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_semester`
--

CREATE TABLE `tabel_semester` (
  `id_semester` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_poin` int(10) NOT NULL,
  `id_wali_kelas` int(10) NOT NULL,
  `id_ortu` int(10) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` enum('1','2','','') NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL,
  `tingkat_kelas` enum('1','2','3','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_semester`
--

INSERT INTO `tabel_semester` (`id_semester`, `id_siswa`, `id_poin`, `id_wali_kelas`, `id_ortu`, `id_kelas`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
(54, 123, 678, 908, 888, 889, '0000-00-00', '', 'Aktif', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `id_siswa` int(10) NOT NULL,
  `nis` int(12) NOT NULL,
  `nisn` int(12) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `nik` int(20) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` int(12) NOT NULL,
  `hp` int(12) NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL,
  `tingkat_kelas` enum('1','2','3','') NOT NULL,
  `jurusan` enum('IPA','IPS','','') NOT NULL,
  `id_wali` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`id_siswa`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `telp`, `hp`, `status`, `tingkat_kelas`, `jurusan`, `id_wali`) VALUES
(123, 1234, 5678, 'Rara', 1234, 'Bandung', '0000-00-00', 'P', 'Jakarta', 1234567890, 1234567891, 'Aktif', '3', 'IPA', 3456);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id_user` int(12) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` int(12) NOT NULL,
  `status` enum('Aktif','Tidak Aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user`, `username`, `password`, `level`, `status`) VALUES
(345, 'visual', '2345', 1, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_wali_kelas`
--

CREATE TABLE `tabel_wali_kelas` (
  `id_wali_kelas` int(10) NOT NULL,
  `nik_nip` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `pendidikan` enum('TK','SD','SMP','SMA','D3','S1') NOT NULL,
  `telp` int(12) NOT NULL,
  `mata_pelajaran` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_wali_kelas`
--

INSERT INTO `tabel_wali_kelas` (`id_wali_kelas`, `nik_nip`, `nama`, `jenis_kelamin`, `pendidikan`, `telp`, `mata_pelajaran`, `alamat`, `status`) VALUES
(1098, 123456, 'Wandi', 'L', 'D3', 56578923, 'IPA', 'Banjar', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_hubungan`
--
ALTER TABLE `tabel_hubungan`
  ADD PRIMARY KEY (`id_hubungan`);

--
-- Indexes for table `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tabel_otang_tua`
--
ALTER TABLE `tabel_otang_tua`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `tabel_poin`
--
ALTER TABLE `tabel_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `tabel_semester`
--
ALTER TABLE `tabel_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tabel_wali_kelas`
--
ALTER TABLE `tabel_wali_kelas`
  ADD PRIMARY KEY (`id_wali_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
