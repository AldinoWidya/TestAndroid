-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 10:34 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisperda`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(10) NOT NULL,
  `no_laporan` varchar(255) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `terlapor` varchar(255) DEFAULT NULL,
  `korban` varchar(255) DEFAULT NULL,
  `apa_terjadi` varchar(255) DEFAULT NULL,
  `file_ktp` varchar(255) DEFAULT NULL,
  `bagaimana` text DEFAULT NULL,
  `tanggal_lapor` date DEFAULT NULL,
  `nik_pelapor` varchar(50) DEFAULT NULL,
  `nama_pelapor` varchar(255) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `no_wa` varchar(20) DEFAULT NULL,
  `tindak_pidana` text DEFAULT NULL,
  `saksi` text DEFAULT NULL,
  `uraian_kejadian` longtext DEFAULT NULL,
  `tindakan` text DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `id_status` varchar(2) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `no_laporan`, `tanggal`, `tempat`, `terlapor`, `korban`, `apa_terjadi`, `file_ktp`, `bagaimana`, `tanggal_lapor`, `nik_pelapor`, `nama_pelapor`, `no_hp`, `no_wa`, `tindak_pidana`, `saksi`, `uraian_kejadian`, `tindakan`, `latitude`, `longitude`, `id_status`, `created_by`, `created_date`) VALUES
(11, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '087887142364', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '', '1996-09-10', 'Pasar Ciputat', 'Qory', 'Fauzan', 'Premanisme', '107872518_312661976529804_7415374312073298523_n.jpg', 'Pemukulan beserta pengeroyokan', '2020-08-21', '320211809737231', 'Randy', '089234156780', '+6289234156780', 'Pidana', 'Aditya', '-', NULL, NULL, NULL, '40', NULL, NULL),
(21, '', '2020-08-06', 'Bintaro Plaza', 'Alvin', 'Teguh', 'Pungutan Liar', '59807343_667783243692469_9103621682853052416_n1.jpg', 'Terjadi di Parkiran', '2020-08-21', '3005212113042215', 'Arya', '082123456789', '+6282123456789', 'Perdata', 'Ihsan', '-', NULL, NULL, NULL, '10', NULL, NULL),
(22, '', '2020-06-30', 'Situ Gintung', 'Piqri', 'Arini', 'Pelecehan', '100997931_3017754034989515_1824259679690599695_n.jpg', 'Secara diam-diam', '2020-08-21', '3310922348982001', 'Reza', '085716234599', '+6285716234599', 'Pidana', 'Teguh', '-', NULL, NULL, NULL, '99', NULL, NULL),
(25, '', '2020-08-01', '1', '1', '1', '1', '93c573f3737080ca43917dd5007405662.jpg', '1', '2020-08-27', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, '40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_file`
--

CREATE TABLE `laporan_file` (
  `id_laporan_file` int(10) NOT NULL,
  `id_laporan` int(10) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan_file`
--

INSERT INTO `laporan_file` (`id_laporan_file`, `id_laporan`, `file`) VALUES
(8, 19, '1598007181_095806520160424-085519780x390.jpg'),
(9, 21, '1598008206_thumb_1473417959_5735638.jpeg'),
(10, 22, '1598008603_93c573f3737080ca43917dd500740566.jpg'),
(13, 25, '1598492479_59807343_667783243692469_9103621682853052416_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `m_status`
--

CREATE TABLE `m_status` (
  `id_status` varchar(2) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_status`
--

INSERT INTO `m_status` (`id_status`, `status`) VALUES
('10', 'Proses'),
('20', 'Valid'),
('30', 'Klarifikasi'),
('40', 'Selesai'),
('99', 'Tidak Valid');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `id_level` int(2) NOT NULL,
  `aktif` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `email`, `nama_user`, `id_level`, `aktif`) VALUES
(1, 'admin', '123', 'admin@tangeranselatan.go.id', 'Admin Perda', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `laporan_file`
--
ALTER TABLE `laporan_file`
  ADD PRIMARY KEY (`id_laporan_file`),
  ADD KEY `id_laporan` (`id_laporan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `laporan_file`
--
ALTER TABLE `laporan_file`
  MODIFY `id_laporan_file` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan_file`
--
ALTER TABLE `laporan_file`
  ADD CONSTRAINT `laporan_file_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
