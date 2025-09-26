-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2025 at 05:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasaantarbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_layanan`
--

CREATE TABLE `jenis_layanan` (
  `layanan_id` int(11) NOT NULL,
  `jasa_id` int(11) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `estimasi_waktu` varchar(50) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `jarak_min` decimal(10,1) NOT NULL DEFAULT 1.0,
  `jarak_max` decimal(10,1) NOT NULL DEFAULT 100.0,
  `status_layanan` varchar(20) NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_layanan`
--

INSERT INTO `jenis_layanan` (`layanan_id`, `jasa_id`, `nama_layanan`, `deskripsi`, `estimasi_waktu`, `harga`, `jarak_min`, `jarak_max`, `status_layanan`) VALUES
(1, 5, 'mantap', 'pengantar dengan jarak 10 - 50', '1 hari kurang', 5000.00, 1.0, 100.0, 'Tidak Aktif'),
(11, 5, 'asdasd', 'weadsdad', '2323', 15500.00, 1.0, 50.0, 'Tidak Aktif'),
(12, 5, 'asdas', 'awdasda', '22', 100.00, 1.0, 213.0, 'Aktif'),
(13, 6, 'sadas', 'qwdadsdas', '1 hari kurang', 5000.00, 1.0, 10.0, 'Aktif'),
(14, 5, 'sadas', 'asdasdasd', '22', 22222.00, 1.0, 22.0, 'Aktif'),
(15, 15, 'lambat', 'lama kali', '10-20 hari', 1000.00, 1.0, 1000.0, 'Aktif'),
(16, 15, 'sdasda', 'sdasdasdasd', '21', 1231.00, 1.0, 12.0, 'Aktif'),
(17, 16, 'si kokoh', 'sangat imut dan mematikan', '1 - 2 jam', 100000.00, 1.0, 10.0, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `nama_js`
--

CREATE TABLE `nama_js` (
  `id_js` int(11) NOT NULL,
  `nama_js` varchar(255) NOT NULL,
  `penanggung_jawab` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `cabang` varchar(255) NOT NULL,
  `tanggal_terdaftar` date NOT NULL,
  `status` enum('aktif','tidak aktif','menunggu') NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nama_js`
--

INSERT INTO `nama_js` (`id_js`, `nama_js`, `penanggung_jawab`, `username`, `password`, `no_telepon`, `email`, `alamat`, `cabang`, `tanggal_terdaftar`, `status`) VALUES
(5, 'asdas', 'sadasda', 'bu123', '$2y$10$BZ8sg.QQPzGpUmFYK7Wqhe7pFj5rpy/.1PPO/8sVL4qP8n9w33j9.', '645634', 'asdas@gmail.com', 'rt 54 rw20 lingkungan x\r\nyukum jaya', 'aaas', '2025-09-24', 'tidak aktif'),
(6, 'kita cepat', 'mas bayu', '1122', '$2y$10$f/BxJef2rjjwb/AViVkpU.Lkv.2O73o2ZqkXT8V.Kf0sQzYgzLswi', '0829283829', 'pabrik@gmail.com', 'banda aceh', 'pondok gede', '2025-09-24', 'tidak aktif'),
(7, 'asdas', 'asdas', 'dasda', '$2y$10$HgwevL1tgE8PYBAq7e5xEuxXmzt/cV49CCAoJck6J3atpYaygpQD.', '23423424', 'asdas@gmail.com', 'rt 54 rw20 lingkungan x\r\nyukum jaya', 'asdasddas', '2025-09-24', 'tidak aktif'),
(11, 'asdas', 'asdas', 'dasda', '$2y$10$RPln1Sv9wJkVEvHYkT7HmuFphKm0SLPI3kD1DlYFxsWdqiGaM5MdO', '23423424', 'asdas@gmail.com', 'dasdasdas', 'asdasddas', '2025-09-25', 'tidak aktif'),
(12, 'asdasd', 'adasdasd', 'dasda', '$2y$10$2EjKor91uXchCG2lbfgyqeIQ/a.CjMnsYasVD0zhmNcrMXhHoANy2', '085609113785', 'gitadewi2209@outlook.com', 'rt 54 rw20 lingkungan x\r\nyukum jaya', 'asdasddas', '2025-09-25', 'tidak aktif'),
(13, 'asdasd', 'adasdasd', 'dasda', '$2y$10$UDQetdkpyeH11XX1il8iNOkoTs3RXORlFqFhpbRjOO4YlhSL/OVX2', '085609113785', 'gitadewi2209@outlook.com', 'rt 54 rw20 lingkungan x\r\nyukum jaya', 'asdasddas', '2025-09-25', 'tidak aktif'),
(14, 'maswokwok', 'mas kowi', 'maswokwok', '$2y$10$cWTwdP/rz7ws9QzxzHVJ7.PsokjP6n4C2CYJU9RkKNpcytvCVGFtC', '081818181821', 'owi@gmail.com', 'bandar jaya', 'bandar ', '2025-09-25', 'tidak aktif'),
(15, 'jokowi', 'prabowo', 'mas11', '$2y$10$PQnU5S2E/NGnNofgXFI79O66kRVcZE21KQTz6xy1V9eTRi1RLvg/S', '081818181821', 'owi22@gmail.com', 'sadasdasdasdas', 'bandar ', '2025-09-25', 'tidak aktif'),
(16, 'JNE', 'YANTO', 'yanto1122', '$2y$10$5HFPGyp5OwczZykkd1qIiubTZ8jcLRQgSK7U3XeiB.J2bBxaNa/d6', '082198988989', 'yantogaming@gmail.com', 'bandar jaya timur lampung selatan', 'anyer', '2025-09-26', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_js` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `alamat_penjemputan` varchar(255) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `nomor_pengirim` varchar(20) DEFAULT NULL,
  `alamat_tujuan` text NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `nomor_penerima` varchar(20) DEFAULT NULL,
  `jarak_km` decimal(10,1) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Diproses',
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_js`, `id_layanan`, `alamat_penjemputan`, `nama_pengirim`, `nomor_pengirim`, `alamat_tujuan`, `nama_penerima`, `nomor_penerima`, `jarak_km`, `total_harga`, `status`, `tanggal_transaksi`) VALUES
(16, 4, 5, 11, 'dasd', 'asda', NULL, 'asdasdasd', 'asdas', NULL, 22.0, 341000.00, 'Selesai', '2025-09-24 10:31:54'),
(19, 4, 6, 13, 'asdasd', 'padli', '08546546345', 'asdasda', 'asdasd', '234234', 2.0, 10000.00, 'Diproses', '2025-09-24 23:28:30'),
(20, 5, 6, 13, 'sdfsdfsdfsdf', 'dsfsdfsdf', '08546546345', 'sdfsdfsdfsdfds', 'sfsdfsdf', '32234234', 10.0, 50000.00, 'Dibatalkan', '2025-09-25 13:27:00'),
(21, 5, 15, 15, 'asdasdasdasdasd', 'dsfsdfsdf', '08546546345', 'dasdasdasdasdas', 'asdasdasda', 'dasdasdasd', 1000.0, 1000000.00, 'Selesai', '2025-09-25 13:54:39'),
(22, 5, 15, 15, 'asdasdasdasd', 'dsfsdfsdf', '08546546345', 'asdasdasdaedwdasdas', 'asdasdasdas', '23131231231231', 199.0, 199000.00, 'Dijemput', '2025-09-26 00:43:17'),
(25, 12, 16, 17, 'sadasdasdasdasd', 'maslik', '082129412412', 'fasdsdsdasdasdasaf', 'asderhrfghtrhtr', '342342423423', 2.0, 200000.00, 'Diproses', '2025-09-26 01:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_js` int(11) NOT NULL,
  `rating` int(1) NOT NULL COMMENT 'Rating bintang dari 1 sampai 5',
  `komentar` text DEFAULT NULL,
  `tanggal_ulasan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `id_transaksi`, `id_user`, `id_js`, `rating`, `komentar`, `tanggal_ulasan`) VALUES
(1, 16, 4, 5, 3, 'sdadasd', '2025-09-24 10:37:56'),
(2, 21, 5, 15, 5, 'sdasfsfas', '2025-09-25 14:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(222) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_registrasi` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_lengkap`, `username`, `email`, `password`, `alamat`, `no_telepon`, `tanggal_lahir`, `tanggal_registrasi`, `status`) VALUES
(2, 'maslik', '', 'wekew@gmail.com', '$2y$10$azoB6pvNrhaT8XtAiBhK9ueCD82VKn1fWSAhS4gZxy53bKiP6U8k6', 'rt 54 rw20 lingkungan x\r\nyukum jaya', '645634', '2025-09-24', '2025-09-24 06:05:47', 'tidak aktif'),
(3, 'bu123', '', 'gitadewi2209@outlook.com', '$2y$10$en3O82orgEq7ixOu9/mvfebngVzb5iDCNFLekJNS5AFzpYG0Wsaom', 'rt 54 rw20 lingkungan x\r\nyukum jaya', '085609113785', '2025-09-24', '2025-09-24 06:41:46', 'tidak aktif'),
(4, 'padli', '', 'ajaja@gmail.com', '$2y$10$U8G8fploe9A1rHLgU.lUi.RQA1z/Hn4Y8rhgfModit5JsPMVoVxvC', 'asdfawdasda', '08546546345', '2025-09-24', '2025-09-24 10:01:24', 'tidak aktif'),
(5, 'dsfsdfsdf', 'maslik', 'maslik@gmail.com', '$2y$10$87tZ4EbVAsHHa0ZpLt/SZ.QnTNjggxoZK7y93.Qg5uIM8uquPOKCG', 'asdfawdasda', '08546546345', '2001-02-08', '2025-09-25 00:24:12', 'tidak aktif'),
(8, 'asdasd', 'asdasdasd', 'maslik1@gmail.com', '$2y$10$4s89IlcV.79CxjowEakFVezZ3jx763ID3wTO38VZNfxcUcusBoecG', 'asddddddddd', '08546546345', '2001-02-08', '2025-09-25 01:48:08', 'tidak aktif'),
(9, 'asdasd', 'asdasdasd', 'maslik11@gmail.com', '$2y$10$PDaHjOxtD4XE0ayNIr/XJus38CwQUNWJmXj./0nA2H7cPKJVnyjiC', 'aasddddddddd', '08546546345', '2001-02-08', '2025-09-25 01:48:57', 'tidak aktif'),
(10, 'sadasdas', 'dasdasdasdasdasdasdasdasdas', 'maslik1111@gmail.com', '$2y$10$E1UTUuTq.ZbI6ZvYKXKQDuoVGIKPznby.f/UTjdEIVgSPAqigxDD.', 'dasdasdasd', '08546546345', '2002-11-25', '2025-09-25 01:49:49', 'tidak aktif'),
(11, 'bu123', 'ibu', 'gitqqadewi2209@outlook.com', '$2y$10$aeZzxBNtKVcU972IeMtXUOOV1LVgG/563fnkKHDwDgM8fDIXwV9he', 'rt 54 rw20 lingkungan x\r\nyukum jaya', '085609113785', '2025-09-25', '2025-09-25 15:50:33', 'tidak aktif'),
(12, 'maslik', 'lik123', 'email@mail.com', '$2y$10$71RHHZzhZVPh/drXpshBFu6/4.c02ls3nC6mTwoFTWFplG5FkoOXi', 'bandar selatan', '082129412412', '1990-03-01', '2025-09-26 01:33:20', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD PRIMARY KEY (`layanan_id`),
  ADD KEY `jasa_id` (`jasa_id`);

--
-- Indexes for table `nama_js`
--
ALTER TABLE `nama_js`
  ADD PRIMARY KEY (`id_js`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_user` (`id_user`),
  ADD KEY `fk_layanan` (`id_layanan`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id_ulasan`),
  ADD UNIQUE KEY `id_transaksi_unik` (`id_transaksi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_js` (`id_js`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  MODIFY `layanan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `nama_js`
--
ALTER TABLE `nama_js`
  MODIFY `id_js` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id_ulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jenis_layanan`
--
ALTER TABLE `jenis_layanan`
  ADD CONSTRAINT `jenis_layanan_ibfk_1` FOREIGN KEY (`jasa_id`) REFERENCES `nama_js` (`id_js`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_transaksi_jenis_layanan` FOREIGN KEY (`id_layanan`) REFERENCES `jenis_layanan` (`layanan_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `ulasan_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `ulasan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `ulasan_ibfk_3` FOREIGN KEY (`id_js`) REFERENCES `nama_js` (`id_js`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
