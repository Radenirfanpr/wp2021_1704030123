-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2021 at 11:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_1704030123`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id`, `produk_id`, `qty`, `pesanan_id`) VALUES
(8, 3, 41, 17),
(9, 2, 40, 17),
(10, 3, 40, 18),
(11, 1, 40, 19),
(12, 2, 40, 20),
(21, 1, 10, 27),
(22, 3, 10, 27),
(24, 2, 20, 29),
(25, 3, 10, 29);

-- --------------------------------------------------------

--
-- Table structure for table `info_pembayaran`
--

CREATE TABLE `info_pembayaran` (
  `id` int(11) NOT NULL,
  `info` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_pembayaran`
--

INSERT INTO `info_pembayaran` (`id`, `info`) VALUES
(1, 'Silahkan lakukan pembayaran DP 50% terlebih dahulu sebelum hari H.\r\nJika tidak maka transaksi akan di batalkan.\r\n\r\nPembayaran Bisa Melalui Rekening Di Bawah Ini:\r\nNama Bank: Bank Negara Indonesia (BNI). \r\nNo. Rek: 0449753964\r\nNama: ADI GUNAWAN. \r\nKode Bank: 009. \r\nKode Swift: BNINIDJA. \r\n\r\nKemudian lakukan konfirmasi di menu konfirmasi pembayaran.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`, `deskripsi`) VALUES
(6, 'Beverages', ''),
(7, 'Steak', ''),
(8, 'Drinks', '');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subjek` varchar(200) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `subjek`, `pesan`) VALUES
(10, '', 'mshodiqul@gmail.com', '', ''),
(11, '', 'mshodiqul@gmail.com', '', ''),
(12, '', 'mshodiqul@gmail.com', '', ''),
(13, '', 'mshodiqul@gmail.com', '', ''),
(14, '', 'mshodiqul@gmail.com', '', ''),
(15, '', 'meryayu@gmail.com', '', ''),
(16, '', 'aku@gmail.com', '', ''),
(17, '', 'aku@gmail.com', '', ''),
(18, '', 'aku@gmail.com', '', ''),
(19, '', 'aku@gmail.com', '', ''),
(20, '', 'aku@gmail.com', '', ''),
(21, '', 'aku@gmail.com', '', ''),
(22, '', 'aku@gmail.com', '', ''),
(23, '', 'admin@gmail.com', '', ''),
(24, '', 'admin@gmail.com', '', ''),
(25, '', 'admin@gmail.com', '', ''),
(26, '', 'admin@gmail.com', '', ''),
(27, '', 'user@gmail.com', '', ''),
(28, '', 'admin@gmail.com', '', ''),
(29, '', 'admin@gmail.com', '', ''),
(30, '', 'admin@gmail.com', '', ''),
(31, '', 'user@gmail.com', '', ''),
(32, '', 'user@user.com', '', ''),
(33, '', 'user@gmail.com', '', ''),
(34, '', 'admin@gmail.com', '', ''),
(35, '', 'user1@gmail.com', '', ''),
(36, '', 'admin@gmail.com', '', ''),
(37, '', 'user1@gmail.com', '', ''),
(38, '', 'user1@gmail.com', '', ''),
(39, '', 'pembeli@gmail.com', '', ''),
(40, '', 'admin@gmail.com', '', ''),
(41, '', 'user@gmail.com', '', ''),
(42, '', 'user@gmail.com', '', ''),
(43, '', 'pembeli@gmail.com', '', ''),
(44, '', 'pembeli@gmail.com', '', ''),
(45, '', 'pembeli@gmail.com', '', ''),
(46, '', 'pembeli@gmail.com', '', ''),
(47, '', 'user@gmail.com', '', ''),
(48, '', 'admin@gmail.com', '', ''),
(49, '', 'admin@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama`, `ongkir`) VALUES
(2, 'Semarang', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_pengeluaran` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `Tanggal_pengeluaran` date NOT NULL,
  `harga` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_pengeluaran`, `nama_barang`, `Tanggal_pengeluaran`, `harga`, `jumlah`, `total`) VALUES
(39, 'knnn', '2017-12-01', '555555', 4, 500000),
(40, 'bberas', '2017-12-15', '50000', 4, 50000),
(41, 'padi', '2017-12-02', '20', 3, 60),
(42, 'gas', '2017-12-04', '25000', 5, 125000);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','verified','','') NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_pesanan`, `id_user`, `file`, `total`, `status`, `keterangan`, `created_at`) VALUES
(3, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad45.jpg', 200000, 'verified', 'Contoh Pembayaran', '0000-00-00 00:00:00'),
(4, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 200000, 'verified', 'Pembayaran Ke Dua', '2016-09-30 15:58:35'),
(5, 17, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 107500, 'verified', 'Terakhir', '2016-09-30 16:10:33'),
(6, 18, 4, '49eb6a44db57cba8d66b3404fa9f0ad46.jpg', 300000, 'verified', 'Bukti Pembayaran', '2016-09-30 16:16:32'),
(7, 18, 4, '49eb6a44db57cba8d66b3404fa9f0ad44.jpg', 40000, 'verified', 'Pembayaran Terakhir', '2016-09-30 16:24:01'),
(8, 19, 4, '49eb6a44db57cba8d66b3404fa9f0ad4buttons.png', 520000, 'verified', 'Bukti Pembayaran', '2016-09-30 16:34:54'),
(9, 25, 6, '49eb6a44db57cba8d66b3404fa9f0ad4urmain.exe', 740000, 'verified', 'ngaceng', '2017-12-04 09:14:10'),
(10, 26, 7, '49eb6a44db57cba8d66b3404fa9f0ad4user.png', 122500, 'verified', 'Transfer dari Bank BNI', '2020-10-07 19:47:15'),
(11, 26, 7, '49eb6a44db57cba8d66b3404fa9f0ad4user.png', 122500, 'verified', 'Sudah', '2020-10-07 19:47:53'),
(12, 27, 10, '49eb6a44db57cba8d66b3404fa9f0ad4favicon.png', 235000, 'verified', 'Bank BNI', '2020-10-09 23:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_digunakan` datetime NOT NULL,
  `user_id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `read` enum('0','1') NOT NULL,
  `status` enum('lunas','belum lunas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal_pesan`, `tanggal_digunakan`, `user_id`, `nama`, `alamat`, `kota`, `ongkir`, `telephone`, `read`, `status`) VALUES
(17, '2016-09-30 08:27:51', '2016-10-04 07:00:00', 4, 'Shodiqul Muzaki', 'karangasem', 'Semarang', 40000, '087717495260', '1', 'lunas'),
(18, '2016-09-30 11:15:02', '2016-10-05 08:02:00', 4, 'Shodiqul Muzaki', 'karangasem', 'Semarang', 40000, '087717495260', '1', 'lunas'),
(19, '2016-09-30 11:34:22', '2016-10-07 07:00:00', 4, 'Shodiqul Muzaki', 'karangasem', 'Semarang', 40000, '087717495260', '1', 'lunas'),
(20, '2016-10-03 04:53:05', '2016-10-11 09:00:00', 5, 'Mery Ayu Nurita', 'Semarang aja', 'Semarang', 40000, '089688899260', '1', 'belum lunas'),
(27, '2020-10-09 18:34:43', '2020-10-13 00:00:00', 10, 'user1', 'padang', 'Semarang', 40000, '08123', '1', 'lunas'),
(29, '2020-10-28 14:02:10', '2020-10-31 00:00:00', 8, 'User Jono', 'Padang', 'Semarang', 40000, '085381259365', '1', 'belum lunas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `deskripsi`, `gambar`, `harga`, `kategori_produk_id`) VALUES
(1, 'Steak Arab', 'asdasdasd', '49eb6a44db57cba8d66b3404fa9f0ad4steak.jpg', '12000', 7),
(2, 'Teh Botol Sosro', 'minuman sehat menyegarkan', '49eb6a44db57cba8d66b3404fa9f0ad4p2.jpg', '4000', 8),
(3, 'Fruit Salad Spesial', 'Fruid salad spesial ', '49eb6a44db57cba8d66b3404fa9f0ad4p3.jpg', '7500', 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `telephone`, `alamat`, `password`, `status`) VALUES
(2, 'Jokowi', 'joko@gmail.com', '08985432330', 'jakarta 1', '7d00ff54a263fe80825b9297804a982c', 'user'),
(3, 'Putri Delvia', 'putri@gmail.com', '08985432330', 'semarang selatan', '82682943a05de360abb183236c632bd6', 'user'),
(4, 'Shodiqul Muzaki', 'mshodiqul@gmail.com', '087717495260', 'karangasem', 'a63ae42a413740542ce47bb20a124438', 'user'),
(5, 'Mery Ayu Nurita', 'meryayu@gmail.com', '089688899260', 'Semarang aja', 'a63ae42a413740542ce47bb20a124438', 'user'),
(8, 'User Jono', 'user@gmail.com', '085381259365', 'Padang', 'ee11cbb19052e40b07aac0ca060c23ee', 'user'),
(9, 'Administrator', 'admin@gmail.com', '085381259356', 'Sungai Penuh', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(10, 'user1', 'user1@gmail.com', '08123', 'padang', '24c9e15e52afc47c225b757e7bee1f9d', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id`,`produk_id`,`pesanan_id`),
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`,`kategori_produk_id`),
  ADD KEY `kategori_produk_id` (`kategori_produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `info_pembayaran`
--
ALTER TABLE `info_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD CONSTRAINT `detail_pesanan_ibfk_2` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pesanan_ibfk_3` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
