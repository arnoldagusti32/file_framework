-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 05:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lelang`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `keterangan` text NOT NULL,
  `harga_awal` float NOT NULL,
  `foto_barang` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `kategori`, `ukuran`, `keterangan`, `harga_awal`, `foto_barang`, `tgl_posting`, `id_user`) VALUES
(1, 'BULANG JAKET REVESIBLE', 'Zipper Hoodie', 'XL', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏\r\n', 100000, '288359149_758326525215103_6565289905625398434_n.jpg', '2022-06-25 12:50:45', 3),
(2, 'BULANG JAKET UNIQLO REVESIBLE', 'Zipper Hoodie', 'XL', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏', 100000, '288203845_424097946282574_4556986120934500612_n.jpg', '2022-06-25 12:55:50', 3),
(3, 'BULANG JAKET UNIQLO REVESIBLE', 'Zipper Hoodie', 'M', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏', 100000, '288933146_170928995383441_5853535273092683449_n.jpg', '2022-06-25 13:07:33', 3),
(4, 'HOODIE 3QR', 'Hoodie', 'L', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏', 100000, '283941626_1998615586988902_8010034490543886747_n.jpg', '2022-06-25 13:12:20', 3),
(5, 'ZIPPER HOODIE DICKIES', 'Zipper Hoodie', 'M', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏', 100000, '284002421_1960371197507163_9181006216339663901_n (1).jpg', '2022-06-25 13:15:44', 3),
(6, 'HOODIE 3QR', 'Hoodie', 'L', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏', 100000, '284628620_5215180215208527_6264733974387316844_n.jpg', '2022-06-25 13:18:17', 3),
(7, 'HOODIE FASHION THREE TONE', 'Hoodie', 'L', 'Kondisi: mulus 99%\r\nMinus: -\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang🙏', 100000, '283960571_1689474364734528_2729091176916486161_n.jpg', '2022-06-25 13:28:54', 3),
(8, 'crewneck purple gemec', 'Crewneck', 'M', 'Kondisi: mulus 98%\r\nPxL: 65x50\r\nMinus: ❎❎\r\nKeterangan: sudah di cuci ☑️\r\nsiap pakai ☑️\r\nFoto no edit ☑️\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang sudah bersih ya temen temen ini 🙏💥', 75000, '242744738_468621897501572_7011088326294136430_n.jpg', '2022-06-25 13:42:31', 3),
(9, 'crewneck peach gemec', 'Crewneck', 'XL', 'Kondisi: mulus 98%\r\nPxL:74x66\r\nMinus:❎❎\r\nKeterangan: sudah di cuci ☑️\r\nsiap pakai ☑️\r\nFoto no edit ☑️\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang sudah bersih ya temen temen ini 🙏💥', 75000, '242690154_844958096392471_8010153750534800574_n.jpg', '2022-06-25 13:46:36', 3),
(10, 'crewneck purple uniqorn gemec', 'Crewneck', 'L', 'Kondisi: mulus 98%\r\nPxL: 65x50\r\nMinus:❎❎\r\nKeterangan: sudah di cuci ☑️\r\nsiap pakai ☑️\r\nFoto no edit ☑️\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang sudah bersih ya temen temen ini 🙏💥', 75000, '242842407_505613843828685_6742796635311553844_n (1).jpg', '2022-06-25 13:49:16', 3),
(11, 'zipper hoodie ADIDAS', 'Zipper Hoodie', 'XL', 'Kondisi: mulus 99%\r\nPxL: 70x62\r\nMinus: ❎❎\r\nKeterangan: sudah di cuci ☑️\r\nsiap pakai ☑️\r\nFoto no edit ☑️\r\n\r\n\r\nCatatan: Warna masih pekat, karet tangan kencang sudah bersih ya temen temen ini 🙏💥\r\n', 100000, '241738705_143522981309288_2317945197349537402_n.jpg', '2022-06-25 13:52:43', 3),
(12, 'Nascar Dupont', 'Shirt', 'XL', 'Kondisi : 99%\r\n\r\nCatatan : Warna Masih Pekat, Karet Kerah Kencang🙏', 50000, '278948537_355655343189954_2808314567226501891_n (1).jpg', '2022-06-25 14:15:54', 3),
(13, 'Nascar Rusty Wallace', 'Shirt', 'XL', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat, karet kerah kencang🙏', 50000, '279049019_5411718248838898_5932458900840259770_n.jpg', '2022-06-25 14:26:10', 3),
(14, 'Nascar MCD', 'Shirt', 'L', 'Kondisi : 99%\r\n\r\nCatatan : Warna maih pekat, karet kerah Kencang🙏', 50000, '278464685_788760722512585_7729371721020200018_n.jpg', '2022-06-25 14:41:11', 3),
(15, 'Basic Flannel White Red', 'Flannel', 'L', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat, kancing masih lengkap🙏', 100000, '275165905_701639474347903_3184611412451263147_n.jpg', '2022-06-25 15:03:59', 3),
(16, 'Basic Flannel Large Black', 'Flannel', 'XL', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat, kancing masih lengkap🙏', 100000, '275175554_720805685991908_5655216372270852695_n.jpg', '2022-06-25 15:07:34', 3),
(17, 'Stripped Flannel', 'Flannel', 'L', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat, kancing masih lengkap🙏', 100000, '275325918_489633922604642_3945076167181891346_n.jpg', '2022-06-25 15:13:48', 3),
(18, 'Snapback Cap', 'Aksesoris', 'ALL SIZE', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat🙏', 25000, '260121903_700191424686995_6227391287402822382_n.jpg', '2022-06-25 18:14:59', 3),
(19, 'Baseball Cap Edisto Beach', 'Aksesoris', 'ALL SIZE', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat🙏', 25000, '273877093_1332838417140517_6839399266405633854_n.jpg', '2022-06-25 18:27:02', 3),
(20, 'Baseball EU Cap', 'Aksesoris', 'ALL SIZE', 'Kondisi : 99%\r\n\r\nCatatan : Warna masih pekat🙏', 25000, '273948570_1102437427173682_4716132731822461407_n.jpg', '2022-06-25 18:29:14', 3);

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `id_bid` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nominal_bid` float NOT NULL,
  `tgl_bid` datetime NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bid`
--

INSERT INTO `bid` (`id_bid`, `id_barang`, `id_user`, `nominal_bid`, `tgl_bid`, `status`) VALUES
(1, 8, 9, 80000, '2022-06-25 18:46:47', 'Kalah'),
(2, 8, 9, 88000, '2022-06-25 18:47:19', 'Menang'),
(3, 20, 7, 30000, '2022-07-01 15:26:14', 'Kalah'),
(4, 20, 7, 35000, '2022-07-19 15:32:52', 'Kalah'),
(5, 20, 1, 40000, '2022-08-12 23:38:47', 'Menang');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_lelang`
--

CREATE TABLE `jadwal_lelang` (
  `id_jadwal` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `tgl_buka` datetime NOT NULL,
  `tgl_tutup` datetime NOT NULL,
  `ket_lelang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_lelang`
--

INSERT INTO `jadwal_lelang` (`id_jadwal`, `id_barang`, `tgl_buka`, `tgl_tutup`, `ket_lelang`) VALUES
(1, 8, '2022-06-25 18:36:00', '2022-07-07 18:36:00', 'Tutup'),
(2, 5, '2022-07-01 15:13:00', '2022-07-09 15:13:00', 'Tutup'),
(3, 20, '2022-07-01 15:14:00', '2022-08-26 15:14:00', 'Tutup'),
(4, 9, '2022-07-01 15:14:00', '2022-07-12 15:14:00', 'Tutup');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_lelang`
--

CREATE TABLE `transaksi_lelang` (
  `id_transaksi` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `id_jadwal` int(10) NOT NULL,
  `id_bid` int(10) NOT NULL,
  `status_transaksi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_lelang`
--

INSERT INTO `transaksi_lelang` (`id_transaksi`, `id_barang`, `id_jadwal`, `id_bid`, `status_transaksi`) VALUES
(3, 8, 1, 2, 'Lunas'),
(4, 20, 3, 5, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kontak_hp` varchar(15) NOT NULL,
  `foto` text NOT NULL,
  `tgl_regist` datetime NOT NULL,
  `hak_akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama`, `email`, `alamat`, `kontak_hp`, `foto`, `tgl_regist`, `hak_akses`) VALUES
(1, 'arnold', '49a30d03c669a09f2c01c3655032af3e', 'Arnold Agusti P', 'arnoldagusti8@gmail.com', 'Depok', '6287771297211', 'IMG_20201228_142143 copy - Copy (2).jpg', '2022-04-23 21:58:06', 'admin'),
(3, 'pelelang', '059b7f2d9873f52e98fbf6b60751dc46', 'Pelelang', 'pelelang@gmail.com', 'Bali', '628777122145', 'u2.jpg', '2022-04-25 01:29:30', 'pelelang'),
(4, 'peserta1', '129451d83a60351a82516cb836842c68', 'Peserta', 'peserta@gmail.com', 'Lampung', '6281241232324', 'popular1.png', '2022-04-25 01:56:17', 'peserta'),
(5, 'rivai@gmail.com', 'c743f6c69347b64850327e356f9e55f4', 'Rivai Sawqi', 'rivai@gmail.com', 'Jakarta', '62341285679435', 'admin-avatar.png', '2022-06-21 23:24:45', 'peserta'),
(6, 'Fahrur', 'ee58b33fad4b0f095d94659c739319e2', 'payuy', 'payuy@gmail.com', 'asd', '6287771297211', '404.png', '2022-06-21 23:35:30', 'peserta'),
(7, 'dewi@gmail.com', 'a3649c4d01e150a6724be345d1321189', 'Dewi Kurniawan', 'dewi@gmail.com', 'Depok', '6234569876549', '404.png', '2022-06-23 13:31:25', 'peserta'),
(8, 'indri@gmail.com', '71f7be7b8496f7ece8454b1bcdcd2162', 'indri', 'indri@gmail.com', 'depok', '623252342325', 'default/admin-avatar.png', '2022-06-23 14:00:55', 'peserta'),
(9, 'Rozi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Rozi', 'Rozi@mailg.com', 'Depok', '6289601305695', 'default/admin-avatar.png', '2022-06-25 18:45:21', 'peserta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`id_bid`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `jadwal_lelang`
--
ALTER TABLE `jadwal_lelang`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `transaksi_lelang`
--
ALTER TABLE `transaksi_lelang`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_barang` (`id_barang`,`id_jadwal`,`id_bid`),
  ADD KEY `id_bid` (`id_bid`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `id_bid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jadwal_lelang`
--
ALTER TABLE `jadwal_lelang`
  MODIFY `id_jadwal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_lelang`
--
ALTER TABLE `transaksi_lelang`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `bid`
--
ALTER TABLE `bid`
  ADD CONSTRAINT `bid_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `bid_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Constraints for table `jadwal_lelang`
--
ALTER TABLE `jadwal_lelang`
  ADD CONSTRAINT `jadwal_lelang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `transaksi_lelang`
--
ALTER TABLE `transaksi_lelang`
  ADD CONSTRAINT `transaksi_lelang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `transaksi_lelang_ibfk_2` FOREIGN KEY (`id_bid`) REFERENCES `bid` (`id_bid`),
  ADD CONSTRAINT `transaksi_lelang_ibfk_3` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal_lelang` (`id_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
