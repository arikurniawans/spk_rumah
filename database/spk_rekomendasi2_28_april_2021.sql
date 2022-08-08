-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Apr 2021 pada 17.42
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_rekomendasi2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_nilai` int(4) NOT NULL,
  `id_personel` int(4) NOT NULL,
  `C1` int(4) NOT NULL,
  `C2` int(4) NOT NULL,
  `C3` int(4) NOT NULL,
  `C4` int(4) NOT NULL,
  `C5` int(4) NOT NULL,
  `C6` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_nilai`, `id_personel`, `C1`, `C2`, `C3`, `C4`, `C5`, `C6`) VALUES
(11, 11, 2, 3, 3, 3, 3, 1),
(12, 8, 2, 2, 5, 5, 5, 3),
(13, 10, 2, 3, 5, 5, 5, 2),
(14, 9, 2, 2, 2, 1, 2, 2),
(15, 6, 2, 1, 1, 5, 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai`
--

CREATE TABLE `bobot_nilai` (
  `id_nilai` int(3) NOT NULL,
  `bobot` varchar(100) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bobot_nilai`
--

INSERT INTO `bobot_nilai` (`id_nilai`, `bobot`, `nilai`) VALUES
(55, 'TIDAK LULUS TEST', 1),
(56, 'TELAH LULUS TEST', 5),
(57, 'SANGAT DISIPLIN DAN TIDAK ADA CATATAN', 1),
(58, 'DISIPLIN DAN TIDAK ADA CATATAN', 2),
(59, 'CUKUP DISIPLIN, MEMILIKI CATATAN', 3),
(60, 'KURANG DISIPLIN DAN MEMILIKI CATATAN', 4),
(61, 'TIDAK DISIPLIN DAN MEMILIKI CATATAN', 5),
(62, '< 1 TAHUN DINAS', 1),
(63, '1-2 TAHUN DINAS', 2),
(64, '3-4 TAHUN DINAS', 3),
(65, '5 TAHUN DINAS', 4),
(66, '6 => TAHUN DINAS', 5),
(67, '0 - 10', 1),
(68, '11 - 19', 2),
(69, '20 - 30', 3),
(70, '31 - 39', 4),
(71, '40 - 50', 5),
(72, 'DASAR BELADIRI POLRI', 1),
(73, 'TINGKATAN 1 - 2', 2),
(74, 'TINGKATAN 3 - 4', 3),
(75, 'TINGKATAN 5', 4),
(76, 'TINGKATAN 6', 5),
(77, 'TIDAK MEMILIKI KETERAMPILAN', 1),
(78, 'PASIF', 4),
(79, 'AKTIF', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c1`
--

CREATE TABLE `kriteria_c1` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'NILAI KESEHATAN PSYKOLOGI',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c1`
--

INSERT INTO `kriteria_c1` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'NILAI KESEHATAN PSYKOLOGI', 'Tidak Memenuhi Syarat (TMS)', 15, 55),
(2, 'NILAI KESEHATAN PSYKOLOGI', 'Memenuhi Syarat (MS)', 15, 56);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c2`
--

CREATE TABLE `kriteria_c2` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'NILAI DAN CATATAN DARI PIMPINAN',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 25,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c2`
--

INSERT INTO `kriteria_c2` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'NILAI DAN CATATAN DARI PIMPINAN', 'Sangat baik (SB)', 25, 57),
(2, 'NILAI DAN CATATAN DARI PIMPINAN', 'Baik (B)', 25, 58),
(3, 'NILAI DAN CATATAN DARI PIMPINAN', 'Cukup (C)', 25, 59),
(4, 'NILAI DAN CATATAN DARI PIMPINAN', 'Buruk (BK)', 25, 60),
(5, 'NILAI DAN CATATAN DARI PIMPINAN', 'Sangat Buruk (SBK)', 25, 61);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c3`
--

CREATE TABLE `kriteria_c3` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'MASA DINAS',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c3`
--

INSERT INTO `kriteria_c3` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'MASA DINAS', 'DIBAWAH 1 TAHUN MASA DINAS', 15, 62),
(2, 'MASA DINAS', '1 SAMPAI 2 TAHUN MASA DINAS', 15, 63),
(3, 'MASA DINAS', '3 SAMPAI 4 TAHUN  MASA DINAS', 15, 64),
(4, 'MASA DINAS', '5 TAHUN MASA DINAS', 15, 65),
(5, 'MASA DINAS', '6 TAHUN ATAU LEBIH MASA DINAS', 15, 66);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c4`
--

CREATE TABLE `kriteria_c4` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'KETERAMPILAN MENEMBAK',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 20,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c4`
--

INSERT INTO `kriteria_c4` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'KETERAMPILAN MENEMBAK', 'SKOR MENEMBAK 0 SAMPAI 10', 20, 67),
(2, 'KETERAMPILAN MENEMBAK', 'SKOR MENEMBAK 11 SAMPAI 19', 20, 68),
(3, 'KETERAMPILAN MENEMBAK', 'SKOR MENEMBAK 20 - 30', 20, 69),
(4, 'KETERAMPILAN MENEMBAK', 'SKOR MENEMBAK 31 - 39', 20, 70),
(5, 'KETERAMPILAN MENEMBAK', 'SKOR MENEMBAK 40 SAMPAI 50', 20, 71);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c5`
--

CREATE TABLE `kriteria_c5` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'KETERAMPILAN BELA DIRI',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c5`
--

INSERT INTO `kriteria_c5` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'KETERAMPILAN BELA DIRI', 'DASAR BELADIRI POLRI', 15, 72),
(2, 'KETERAMPILAN BELA DIRI', 'TINGKATAN 1 - 2', 15, 73),
(3, 'KETERAMPILAN BELA DIRI', 'TINGKATAN 3 - 4', 15, 74),
(4, 'KETERAMPILAN BELA DIRI', 'TINGKATAN 5', 15, 75),
(5, 'KETERAMPILAN BELA DIRI', 'TINGKATAN 6', 15, 76);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c6`
--

CREATE TABLE `kriteria_c6` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'KETERAMPILAN BAHASA ASING ATAU DAERAH',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 10,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c6`
--

INSERT INTO `kriteria_c6` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'KETERAMPILAN BAHASA ASING ATAU DAERAH', 'TIDAK BISA', 10, 77),
(2, 'KETERAMPILAN BAHASA ASING ATAU DAERAH', 'PASIF', 10, 78),
(3, 'KETERAMPILAN BAHASA ASING ATAU DAERAH', 'AKTIF', 10, 79);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personel`
--

CREATE TABLE `personel` (
  `id_personel` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `nrp` varchar(8) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae',
  `user_status` enum('admin','pimpinan','personel') NOT NULL DEFAULT 'personel'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `personel`
--

INSERT INTO `personel` (`id_personel`, `nama`, `pangkat`, `nrp`, `jabatan`, `no_telpon`, `username`, `password`, `user_status`) VALUES
(1, 'Admin', '-', '-', '', '-', 'admin', '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae', 'admin'),
(6, 'WILIYANTO', 'AIPTU', '76070723', 'PS PAMIN 2', '081379319303', 'WILIYANTO', '$2y$10$Lt2MB8DofmR9Ox1cXKA.tum4sIW.cHuoZhyO8ytiHXJYPs7JkVPEu', 'personel'),
(7, 'DEDY MEIDIANTARA', 'BRIPKA', '84051079', 'BAMIN SUBBAGBINOPSNAL', '0812 7232 5084', 'DEDY', '$2y$10$FLwnjDkcVfCWU8BHd.P/K.2YMKodFYU6bfdI80aHh9Ir4G4dnFIGC', 'personel'),
(8, 'M. KURNIA SUHARI', 'BRIPKA', '86090493', 'PS PAMIN 1', '0812 7979 0703', 'MKURNIA', '$2y$10$Fc4SqtaSa5iJkWO.CTCSRO3SL8beKGccnV1Ex0fERkT38KUWIYPaC', 'personel'),
(9, 'ABDUL REZA SUMUAL', 'BRIPKA', '84090383', 'KAUR KEU', '0812 7144 8199', 'ABDULREZA', '$2y$10$LYJC8bleQuf9pcJuIHU3/.7aIzYQMfZ9ZjlRiUJo1D5p.8KxYd51y', 'personel'),
(10, 'MOCH. NASSER HUSEIN, S.H', 'BRIGPOL', '91050069', 'BAMIN URKEU', '0822 5516 1179', 'NASSER', '$2y$10$XBaqhIj3gKmGmKLK0wQyh.R.95Y8lIoj4ihSZm3y9PDSaq/Narr0O', 'personel'),
(11, 'AKBAR MADYA PRATAMA', 'BRIPTU', '97020128', 'BAMIN SUBBAG ANEV', '0813 6990 9029', 'AKBAR', '$2y$10$ikG.YGtiP6D7xFi8EG5fpupIAhIQlwCsO9m5X/XgLj1QBOYe4nRKu', 'personel');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_alternatif`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_alternatif` (
`id_nilai` int(4)
,`id_personel` int(3)
,`nama` varchar(100)
,`id_c1` int(4)
,`C1` varchar(100)
,`id_c2` int(4)
,`C2` varchar(100)
,`id_c3` int(4)
,`C3` varchar(100)
,`id_c4` int(4)
,`C4` varchar(100)
,`id_c5` int(4)
,`C5` varchar(100)
,`id_c6` int(4)
,`C6` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c1`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c1` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c2` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c3`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c3` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c4`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c4` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c5`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c5` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c6`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c6` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_rating_kecocokan2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_rating_kecocokan2` (
`nama` varchar(100)
,`NC1` int(3)
,`NC2` int(3)
,`NC3` int(3)
,`NC4` int(3)
,`NC5` int(3)
,`NC6` int(3)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_alternatif`
--
DROP TABLE IF EXISTS `v_alternatif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_alternatif`  AS  select `alternatif`.`id_nilai` AS `id_nilai`,`personel`.`id_personel` AS `id_personel`,`personel`.`nama` AS `nama`,`kriteria_c1`.`id_kriteria` AS `id_c1`,`kriteria_c1`.`sub_kriteria` AS `C1`,`kriteria_c2`.`id_kriteria` AS `id_c2`,`kriteria_c2`.`sub_kriteria` AS `C2`,`kriteria_c3`.`id_kriteria` AS `id_c3`,`kriteria_c3`.`sub_kriteria` AS `C3`,`kriteria_c4`.`id_kriteria` AS `id_c4`,`kriteria_c4`.`sub_kriteria` AS `C4`,`kriteria_c5`.`id_kriteria` AS `id_c5`,`kriteria_c5`.`sub_kriteria` AS `C5`,`kriteria_c6`.`id_kriteria` AS `id_c6`,`kriteria_c6`.`sub_kriteria` AS `C6` from (((((((`alternatif` join `personel` on(`personel`.`id_personel` = `alternatif`.`id_personel`)) join `kriteria_c1` on(`kriteria_c1`.`id_kriteria` = `alternatif`.`C1`)) join `kriteria_c2` on(`kriteria_c2`.`id_kriteria` = `alternatif`.`C2`)) join `kriteria_c3` on(`kriteria_c3`.`id_kriteria` = `alternatif`.`C3`)) join `kriteria_c4` on(`kriteria_c4`.`id_kriteria` = `alternatif`.`C4`)) join `kriteria_c5` on(`kriteria_c5`.`id_kriteria` = `alternatif`.`C5`)) join `kriteria_c6` on(`kriteria_c6`.`id_kriteria` = `alternatif`.`C6`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c1`
--
DROP TABLE IF EXISTS `v_kriteria_c1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c1`  AS  select `kriteria_c1`.`id_kriteria` AS `id_kriteria`,`kriteria_c1`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c1` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c1`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c2`
--
DROP TABLE IF EXISTS `v_kriteria_c2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c2`  AS  select `kriteria_c2`.`id_kriteria` AS `id_kriteria`,`kriteria_c2`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c2` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c2`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c3`
--
DROP TABLE IF EXISTS `v_kriteria_c3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c3`  AS  select `kriteria_c3`.`id_kriteria` AS `id_kriteria`,`kriteria_c3`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c3` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c3`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c4`
--
DROP TABLE IF EXISTS `v_kriteria_c4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c4`  AS  select `kriteria_c4`.`id_kriteria` AS `id_kriteria`,`kriteria_c4`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c4` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c4`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c5`
--
DROP TABLE IF EXISTS `v_kriteria_c5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c5`  AS  select `kriteria_c5`.`id_kriteria` AS `id_kriteria`,`kriteria_c5`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c5` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c5`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c6`
--
DROP TABLE IF EXISTS `v_kriteria_c6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c6`  AS  select `kriteria_c6`.`id_kriteria` AS `id_kriteria`,`kriteria_c6`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c6` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c6`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_rating_kecocokan2`
--
DROP TABLE IF EXISTS `v_rating_kecocokan2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rating_kecocokan2`  AS  select `personel`.`nama` AS `nama`,`v_kriteria_c1`.`nilai` AS `NC1`,`v_kriteria_c2`.`nilai` AS `NC2`,`v_kriteria_c3`.`nilai` AS `NC3`,`v_kriteria_c4`.`nilai` AS `NC4`,`v_kriteria_c5`.`nilai` AS `NC5`,`v_kriteria_c6`.`nilai` AS `NC6` from (((((((`alternatif` join `v_kriteria_c1` on(`v_kriteria_c1`.`id_kriteria` = `alternatif`.`C1`)) join `v_kriteria_c2` on(`v_kriteria_c2`.`id_kriteria` = `alternatif`.`C2`)) join `v_kriteria_c3` on(`v_kriteria_c3`.`id_kriteria` = `alternatif`.`C3`)) join `v_kriteria_c4` on(`v_kriteria_c4`.`id_kriteria` = `alternatif`.`C4`)) join `v_kriteria_c5` on(`v_kriteria_c5`.`id_kriteria` = `alternatif`.`C5`)) join `v_kriteria_c6` on(`v_kriteria_c6`.`id_kriteria` = `alternatif`.`C6`)) join `personel` on(`personel`.`id_personel` = `alternatif`.`id_personel`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c5`
--
ALTER TABLE `kriteria_c5`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c6`
--
ALTER TABLE `kriteria_c6`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id_personel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c5`
--
ALTER TABLE `kriteria_c5`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c6`
--
ALTER TABLE `kriteria_c6`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personel`
--
ALTER TABLE `personel`
  MODIFY `id_personel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
