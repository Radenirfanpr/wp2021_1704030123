-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 Jan 2022 pada 08.37
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpsmt5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_mhs`
--

CREATE TABLE `calon_mhs` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `agama` varchar(9) NOT NULL,
  `sekolah_asal` varchar(30) NOT NULL,
  `foto_maba` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `calon_mhs`
--

INSERT INTO `calon_mhs` (`id`, `nama`, `alamat`, `jenis_kelamin`, `agama`, `sekolah_asal`, `foto_maba`) VALUES
(1, 'Pablo Emilio Escobar', 'Dagota Colombia', 'LAKI-LAKI', 'Katolik', 'Union Country Magnet', 1),
(2, 'Pidi Baiq', 'Bandung', 'LAKI-LAKI', 'Islam', 'SMAN 6 Bandung', 2),
(3, 'RIO RIZALDI', 'TANGERANG', 'LAKI-LAKI', 'Islam', 'SMAN 11 KOTA TANGERANG', 3),
(4, 'Mick Tyson', 'Florida', 'LAKI-LAKI', 'Protestan', 'Staten School Techical', 4),
(5, 'Mick Jagger', 'Los Santos', 'LAKI-LAKI', 'Katolik', 'Northside College ', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_dosen`
--

CREATE TABLE `daftar_dosen` (
  `id` int(7) NOT NULL,
  `nidn` int(15) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `s1` varchar(20) NOT NULL,
  `s2` varchar(20) NOT NULL,
  `s3` varchar(20) NOT NULL,
  `foto` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_dosen`
--

INSERT INTO `daftar_dosen` (`id`, `nidn`, `nama`, `email`, `jenis_kelamin`, `alamat`, `agama`, `s1`, `s2`, `s3`, `foto`) VALUES
(1, 401099003, 'Djamaludin', 'Djamaludin@unis.ac.i', 'LAKI-LAKI', 'Tangerang', 'Islam', 'Pendidikan S1', 'Pendidikan S2', 'Pendidikan S3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calon_mhs`
--
ALTER TABLE `calon_mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_dosen`
--
ALTER TABLE `daftar_dosen`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calon_mhs`
--
ALTER TABLE `calon_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
