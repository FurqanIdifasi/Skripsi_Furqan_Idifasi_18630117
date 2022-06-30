-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2022 pada 18.31
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telkom_psb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `pem_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `no_hp` varchar(25) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `tim` varchar(100) DEFAULT NULL,
  `area` varchar(10) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `pem_id`, `nama`, `nik`, `no_hp`, `alamat`, `jabatan`, `tim`, `area`, `foto`, `username`, `password`) VALUES
(1, NULL, 'Furqan Idifasi', '21000087', '081347776912', 'Jl. Kelayan B Gang Gembira No. 50', 'admin', 'ADMIN', 'ALL AREA', '58266Profilku.jpg', 'admin', 'admin'),
(2, NULL, 'Adul', '16001857', '081313242456', 'jl. kelayan A', 'teknisi', 'BJM', 'BJM - KYG', '39084Teknisi 1.jpg', 'adul', 'teknisi'),
(3, NULL, 'Udin', '16001858', '082223456789', 'Jl. Bina Karya', 'teknisi', 'BJB', 'BJB - MTP', '27281Teknisi 2.jpg', 'udin', 'teknisi'),
(4, NULL, 'Anang', '16001859', '083113134556', 'jl. kandangan ', 'teknisi', 'TJL', 'KDG - BRI', '10261Teknisi 1.jpg', 'anang', 'teknisi'),
(5, NULL, 'Amat', '16001860', '082211223344', 'jl. pagatan', 'teknisi', 'BLC', 'PGT - BLC', '30689Teknisi 2.jpg', 'amat', 'teknisi'),
(6, NULL, 'Amat', '123', '08444', 'Jl. Kelayan B Gang Gembira No. 50', 'pelanggan', '-', '-', '9793photo_2022-02-19_23-08-36.jpg', '123', '123'),
(7, 16, 'satu', '111', '111', '111', 'pelanggan', '-', '-', '33591photo_2022-02-19_23-08-36.jpg', '111', '111'),
(8, NULL, 'Adul', '21000087', '0813', 'jl. pagatan', 'pelanggan', '-', '-', '96762photo_2022-02-19_23-08-36.jpg', '21000087', '21000087'),
(13, 18, 'asfafasf', '1809', '1809', 'Jl. Bina Karya', 'pelanggan', '-', '-', '63396ssss.jpg', '1809', '1809');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL,
  `jenis` enum('1P','2P','3P') DEFAULT NULL,
  `speed` enum('20mb','30mb','50mb','100mb') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id`, `nama`, `harga`, `detail`, `status`, `jenis`, `speed`) VALUES
(1, 'Paket Pelajar', '300000', 'Hanya untuk akses ineternet dengan kecepatan 20MBPS', 'aktif', '1P', '20mb'),
(2, 'Paket Gaming', '400000', '<p>Akses Internet untuk gaming lancar</p>', 'aktif', '1P', '30mb'),
(3, 'Paket Inet + Voice', '350000', '<p>Akses Internet dan Telpon dengan bundling 20MBPS & 50 Menit Telpon</p>', 'aktif', '2P', '20mb'),
(4, 'Paket Inet + TV', '450000', '<p>Akses Internet dan Telpon dengan bundling 20MBPS &amp; Set Up Box TV<br></p>', 'aktif', '2P', '20mb'),
(5, 'Paket Inet + Voice + TV', '550000', '<p>Akses Internet dan Telpon dengan bundling 20MBPS &amp; 50 Menit Telpon serta Set up Box TV<br></p>', 'aktif', '3P', '20mb');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nik` varchar(150) DEFAULT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `status_rumah` varchar(50) DEFAULT NULL,
  `hp` varchar(18) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `foto_pelanggan` varchar(250) DEFAULT NULL,
  `foto_ktp` varchar(250) DEFAULT NULL,
  `foto_selfie` varchar(250) DEFAULT NULL,
  `foto_rumah` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode`, `nik`, `nama`, `alamat`, `status_rumah`, `hp`, `tgl_daftar`, `latitude`, `longitude`, `foto_pelanggan`, `foto_ktp`, `foto_selfie`, `foto_rumah`) VALUES
(3, 'P0001', '63710001', 'Pelanggan Pertama', 'baru banar', 'MILIK SENDIRI ', '080001', '2022-02-07', '-3.3424946', '-114444983942', '62066Profil 1.png', '33141ktp 1.jpg', '67225selfie 1.jpg', '69285photo_2022-02-19_23-08-36.jpg'),
(4, 'P0002', '63710002', 'Pelanggan	Kedua ', 'Jl. Kedua Banjarbaru', 'SEWA', '080002', '2022-02-07', '22222', '22222', '26260Profil 2.png', '40224ktp 2.jpg', '9814selfie 2.jpg', '77760rumah 2.jpg'),
(5, 'P0003', '63710003', 'Pelanggan	Ketiga ', 'Jl. Ketiga Kandangan', 'SEWA', '080003', '2022-02-08', '33333', '33333', '98445Profil 3.png', '44278ktp 3.jpg', '29083selfie 3.jpg', '49468rumah 3.jpg'),
(6, 'P0004', '63710004', 'Pelanggan	Keempat ', 'Jl. Keempat Batulicin', 'SEWA', '080004', '2022-02-08', '44444', '44444', '44969Profil 4.png', '16084ktp 4.jpg', '39295selfie 4.jpg', '48494rumah 4.jpg'),
(7, 'P0005', '63710005', 'Pelanggan	Kelima ', 'Jl. Kelima Martapura', 'MILIK SENDIRI', '080005', '2022-02-08', '55555', '55555', '70420Profil 5.png', '7049ktp 5.jpg', '72695selfie 5.jpg', '63560rumah 5.jpg'),
(8, 'P0006', '7uue', '7rturu', 'rye', 'SEWA', 'qtwy', '2022-06-09', 'utrururur', 'ururur', '5234Screenshot_1.jpg', '30667Screenshot_1.jpg', '44351Screenshot_1.jpg', '18739Screenshot_1.jpg'),
(9, 'P0007', '7886868', 'fssdfsg', 'jl. kelayan A', 'MILIK SENDIRI', '808080', '2022-06-09', '111', '111', '18178Screenshot_1.jpg', '13374Screenshot_1.jpg', '17713Screenshot_1.jpg', '88473Screenshot_1.jpg'),
(10, 'P0008', '665', '646', '4646', 'MILIK SENDIRI', '4664', '2022-06-09', '555', '6666', '25870Screenshot_2.jpg', '83815Screenshot_2.jpg', '11249Screenshot_2.jpg', '20040Screenshot_2.jpg'),
(11, 'P0009', '8978978', 'Amat', 'jl. pagatan', 'MILIK SENDIRI', '08111', '2022-06-13', '444', '114.5980113', '21251ssss.jpg', '94567usecase.jpg', '42579Screenshot_2.png', '33903Screenshot_1.png'),
(15, 'P0010', '123', 'Amat', 'Jl. Kelayan B Gang Gembira No. 50', 'MILIK SENDIRI', '08444', '2022-06-23', '444', '22222', '9793photo_2022-02-19_23-08-36.jpg', '64451photo_2022-02-19_23-08-36.jpg', '52478photo_2022-02-19_23-08-36.jpg', '28763photo_2022-02-19_23-08-36.jpg'),
(16, 'P0011', '111', '111', '111', 'SEWA/KONTRAK', '111', '2022-06-23', '111', '111', '33591photo_2022-02-19_23-08-36.jpg', '23528photo_2022-02-19_23-08-36.jpg', '86346photo_2022-02-19_23-08-36.jpg', '29547photo_2022-02-19_23-08-36.jpg'),
(17, 'P0012', '21000087', 'Adul', 'jl. pagatan', 'MILIK SENDIRI', '0813', '2022-06-23', '444', '22222', '96762photo_2022-02-19_23-08-36.jpg', '46337photo_2022-02-19_23-08-36.jpg', '78986photo_2022-02-19_23-08-36.jpg', '21466photo_2022-02-19_23-08-36.jpg'),
(18, 'P0013', '1809', 'asfafasf', 'Jl. Bina Karya', 'MILIK SENDIRI', '1809', '2022-06-23', '66666', '22222', '63396ssss.jpg', '67318ex.jpg', '82329Screenshot_2.png', '1775YUYUYUYUYUYUYYUYUYUDIDIDIDIDIDIDIDIDDIDIDIDIDIDI.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasangan`
--

CREATE TABLE `pemasangan` (
  `id` int(11) NOT NULL,
  `pendaftaran_id` int(11) NOT NULL,
  `teknisi_id` int(11) NOT NULL,
  `status_pasang` enum('SEDANG ANTRIAN','MENUJU RUMAH PELANGGAN','PROSES PEMASANGAN','SELESAI','ADA KENDALA') NOT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `tgl_rencana_pasang` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status_config` enum('HD OGP','DONE') DEFAULT NULL,
  `ket_config` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemasangan`
--

INSERT INTO `pemasangan` (`id`, `pendaftaran_id`, `teknisi_id`, `status_pasang`, `foto`, `tgl_rencana_pasang`, `tgl_selesai`, `keterangan`, `status_config`, `ket_config`) VALUES
(4, 7, 2, 'SELESAI', '5411Selesai.jpg', '2022-02-08', '2022-02-08', 'done', 'DONE', 'Done Config'),
(5, 8, 3, 'SELESAI', '93799Selesai.jpg', '2022-02-08', '2022-02-08', 'done', 'DONE', 'Done Config'),
(6, 9, 4, 'SELESAI', '24160Selesai.jpg', '2022-02-08', '2022-02-08', 'done', 'DONE', 'Done Config'),
(7, 10, 5, 'ADA KENDALA', '86478full.jpg', '2022-02-08', '2022-02-08', 'full', 'DONE', 'Done Config'),
(8, 11, 3, 'ADA KENDALA', '39714full.jpg', '2022-02-08', '2022-02-08', 'full', 'DONE', 'Done Config'),
(10, 42, 3, 'SELESAI', '72069photo_2022-02-19_23-08-36.jpg', '2022-06-17', '2022-06-17', 'alhamdulilah selesai ', 'DONE', 'Done, Inet : 161001 Voice : 0511001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `no_psb` varchar(50) NOT NULL,
  `jenis_psb` varchar(50) NOT NULL,
  `no_internet` varchar(25) NOT NULL,
  `no_voice` varchar(25) NOT NULL,
  `paket_id` int(11) DEFAULT NULL,
  `tgl_psb` date DEFAULT NULL,
  `status_pemasangan` enum('PROSES PENGECEKKAN','MENUGGU ANTRIAN','DISETUJUI','DIBATALKAN') DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `pelanggan_id`, `no_psb`, `jenis_psb`, `no_internet`, `no_voice`, `paket_id`, `tgl_psb`, `status_pemasangan`, `ket`) VALUES
(7, 3, 'SC0001', 'PASANG BARU', '161001', '0511001', 1, '2022-02-07', 'DISETUJUI', 'Lanjut Tim '),
(8, 4, 'SC0002', 'PASANG BARU', '161002', '0511002', 3, '2022-02-07', 'DISETUJUI', 'Lanjut Tim '),
(9, 5, 'SC0003', 'PASANG BARU', '161003', '0511003', 5, '2022-02-08', 'DISETUJUI', 'Lanjut Tim '),
(10, 6, 'SC0004', 'PASANG BARU', '161004', '0511004', 4, '2022-02-08', 'DISETUJUI', 'Lanjut Tim '),
(11, 7, 'SC0005', 'PASANG BARU', '161005', '0511005', 3, '2022-02-08', 'DISETUJUI', 'Lanjut Tim '),
(42, 3, 'SC0006', 'MIGRASI', '161001', '0511001', 1, '2022-06-17', 'DISETUJUI', 'Lanjut Tim '),
(45, 17, 'SC0009', 'PASANG BARU', '161999999', '161999999', 4, '2022-06-23', 'DISETUJUI', 'Lanjut Tim '),
(46, 18, 'SC0010', 'PASANG BARU', '', '', 3, '2022-06-23', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pem_id` (`pem_id`) USING BTREE;

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`) USING BTREE;

--
-- Indeks untuk tabel `pemasangan`
--
ALTER TABLE `pemasangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengaduan_id` (`pendaftaran_id`),
  ADD KEY `teknisi_id` (`teknisi_id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`),
  ADD KEY `paket_id` (`paket_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pemasangan`
--
ALTER TABLE `pemasangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `userpelanggan_ibfk_1` FOREIGN KEY (`pem_id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemasangan`
--
ALTER TABLE `pemasangan`
  ADD CONSTRAINT `pemasangan_ibfk_1` FOREIGN KEY (`pendaftaran_id`) REFERENCES `pendaftaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemasangan_ibfk_2` FOREIGN KEY (`teknisi_id`) REFERENCES `karyawan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pendaftaran_ibfk_2` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
