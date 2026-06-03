CREATE DATABASE db_simi;
USE db_simi;

CREATE TABLE `alat_gym` (
  `id_alat` int NOT NULL,
  `nama_alat` varchar(100) DEFAULT NULL,
  `kondisi_alat` varchar(30) DEFAULT NULL,
  `jumlah` int DEFAULT NULL
);

INSERT INTO `alat_gym` (`id_alat`, `nama_alat`, `kondisi_alat`, `jumlah`) VALUES
(1, 'Treadmill', 'Baik', 5),
(2, 'Barbell', 'Baik', 10),
(3, 'Dumbbell', 'Baik', 20),
(4, 'Bench Press', 'Baik', 4),
(5, 'Leg Press', 'Baik', 3),
(6, 'Pull Up Bar', 'Baik', 2),
(7, 'Sepeda Statis', 'Rusak Ringan', 5),
(8, 'Elliptical', 'Baik', 4),
(9, 'Cable Machine', 'Baik', 2),
(10, 'Smith Machine', 'Baik', 3);


CREATE TABLE `kelas_fitness` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(50) DEFAULT NULL,
  `jadwal` varchar(50) DEFAULT NULL,
  `kapasitas` int DEFAULT NULL
);

INSERT INTO `kelas_fitness` (`id_kelas`, `nama_kelas`, `jadwal`, `kapasitas`) VALUES
(1, 'Yoga', 'Senin 08:00', 20),
(2, 'Zumba', 'Selasa 09:00', 25),
(3, 'Aerobik', 'Rabu 10:00', 20),
(4, 'Crossfit', 'Kamis 15:00', 15),
(5, 'Body Pump', 'Jumat 16:00', 20),
(6, 'Pilates', 'Sabtu 08:00', 20),
(7, 'Cardio Blast', 'Minggu 09:00', 15),
(8, 'HIIT', 'Senin 14:00', 15),
(9, 'Strength', 'Selasa 16:00', 15),
(10, 'Dance Fitness', 'Rabu 13:00', 20);


CREATE TABLE `member` (
  `id_member` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
);

INSERT INTO `member` (`id_member`, `nama`, `jenis_kelamin`, `no_hp`, `alamat`) VALUES
(1, 'Akbar', 'Laki-laki', '0811111111', 'Lamongan'),
(2, 'Rina', 'Perempuan', '0811111112', 'Surabaya'),
(3, 'Budi', 'Laki-laki', '0811111113', 'Sampang'),
(4, 'Andi', 'Laki-laki', '0811111114', 'Madura'),
(5, 'Sinta', 'Perempuan', '0811111115', 'Surabaya'),
(6, 'Dina', 'Perempuan', '0811111116', 'Gresik'),
(7, 'Rizky', 'Laki-laki', '0811111117', 'Lamongan'),
(8, 'Fajar', 'Laki-laki', '0811111118', 'Malang'),
(9, 'Inaya', 'Perempuan', '0811111119', 'Gresik'),
(10, 'Nanda', 'Perempuan', '0811111120', 'Mojokerto'),
(11, 'Akbar', 'Laki-laki', '0811111111', 'Lamongan'),
(12, 'Rina', 'Perempuan', '0811111112', 'Surabaya'),
(13, 'Budi', 'Laki-laki', '0811111113', 'Sampang'),
(14, 'Andi', 'Laki-laki', '0811111114', 'Madura'),
(15, 'Sinta', 'Perempuan', '0811111115', 'Surabaya'),
(16, 'Dina', 'Perempuan', '0811111116', 'Gresik'),
(17, 'Rizky', 'Laki-laki', '0811111117', 'Lamongan'),
(18, 'Fajar', 'Laki-laki', '0811111118', 'Malang'),
(19, 'Inaya', 'Perempuan', '0811111119', 'Gresik'),
(20, 'Nanda', 'Perempuan', '0811111120', 'Mojokerto'),
(21, 'Akbar', 'Laki-laki', '0811111111', 'Lamongan'),
(22, 'Rina', 'Perempuan', '0811111112', 'Surabaya'),
(23, 'Budi', 'Laki-laki', '0811111113', 'Sampang'),
(24, 'Andi', 'Laki-laki', '0811111114', 'Madura'),
(25, 'Sinta', 'Perempuan', '0811111115', 'Surabaya'),
(26, 'Dina', 'Perempuan', '0811111116', 'Gresik'),
(27, 'Rizky', 'Laki-laki', '0811111117', 'Lamongan'),
(28, 'Fajar', 'Laki-laki', '0811111118', 'Malang'),
(29, 'Inaya', 'Perempuan', '0811111119', 'Gresik'),
(30, 'Nanda', 'Perempuan', '0811111120', 'Mojokerto');


CREATE TABLE `paket_member` (
  `id_paket` int NOT NULL,
  `nama_paket` varchar(50) DEFAULT NULL,
  `durasi_bulan` int DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `tipe_pelanggan` varchar(30) DEFAULT NULL
);

INSERT INTO `paket_member` (`id_paket`, `nama_paket`, `durasi_bulan`, `harga`, `tipe_pelanggan`) VALUES
(1, 'Harian', 1, 50000.00, 'Reguler'),
(2, 'Mingguan', 7, 100000.00, 'Reguler'),
(3, 'Bulanan', 30, 250000.00, 'Reguler'),
(4, '2 Bulan', 60, 450000.00, 'Reguler'),
(5, '3 Bulan', 90, 600000.00, 'Reguler'),
(6, '6 Bulan', 182, 1000000.00, 'Reguler'),
(7, 'Tahunan', 365, 1800000.00, 'Reguler'),
(8, 'VIP 1 Bulan', 30, 500000.00, 'VIP'),
(9, 'VIP 6 Bulan', 182, 2500000.00, 'VIP'),
(10, 'VIP Tahunan', 365, 4500000.00, 'VIP');


CREATE TABLE `pelatih` (
  `id_pelatih` int NOT NULL,
  `nama_pelatih` varchar(100) DEFAULT NULL,
  `spesialis` varchar(50) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
);

INSERT INTO `pelatih` (`id_pelatih`, `nama_pelatih`, `spesialis`, `no_hp`) VALUES
(1, 'Yoga', 'Bodybuilding', '08120001'),
(2, 'Rudi', 'Cardio', '08120002'),
(3, 'Joko', 'Crossfit', '08120003'),
(4, 'Tono', 'Yoga', '08120004'),
(5, 'Dewi', 'Zumba', '08120005'),
(6, 'Putri', 'Aerobik', '08120006'),
(7, 'Asep', 'Strength', '08120007'),
(8, 'Raka', 'Powerlifting', '08120008'),
(9, 'Doni', 'Fitness', '08120009'),
(10, 'Linda', 'Cardio', '08120010'),
(11, 'Yoga', 'Bodybuilding', '08120001'),
(12, 'Rudi', 'Cardio', '08120002'),
(13, 'Joko', 'Crossfit', '08120003'),
(14, 'Tono', 'Yoga', '08120004'),
(15, 'Dewi', 'Zumba', '08120005'),
(16, 'Putri', 'Aerobik', '08120006'),
(17, 'Asep', 'Strength', '08120007'),
(18, 'Raka', 'Powerlifting', '08120008'),
(19, 'Doni', 'Fitness', '08120009'),
(20, 'Linda', 'Cardio', '08120010'),
(21, 'Yoga', 'Bodybuilding', '08120001'),
(22, 'Rudi', 'Cardio', '08120002'),
(23, 'Joko', 'Crossfit', '08120003'),
(24, 'Tono', 'Yoga', '08120004'),
(25, 'Dewi', 'Zumba', '08120005'),
(26, 'Putri', 'Aerobik', '08120006'),
(27, 'Asep', 'Strength', '08120007'),
(28, 'Raka', 'Powerlifting', '08120008'),
(29, 'Doni', 'Fitness', '08120009'),
(30, 'Linda', 'Cardio', '08120010');


CREATE TABLE `transaksi_latihan` (
  `id_latihan` int NOT NULL,
  `id_member` int DEFAULT NULL,
  `id_pelatih` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_alat` int DEFAULT NULL,
  `tanggal_latihan` date DEFAULT NULL
);

INSERT INTO `transaksi_latihan` (`id_latihan`, `id_member`, `id_pelatih`, `id_kelas`, `id_alat`, `tanggal_latihan`) VALUES
(1, 1, 1, 1, 1, '2026-05-11'),
(2, 2, 2, 2, 7, '2026-05-11'),
(3, 3, 3, 3, 2, '2026-05-12'),
(4, 4, 4, 4, 6, '2026-05-12'),
(5, 5, 5, 5, 3, '2026-05-13'),
(6, 6, 6, 6, 8, '2026-05-13'),
(7, 7, 7, 7, 1, '2026-05-14'),
(8, 8, 8, 8, 4, '2026-05-14'),
(9, 9, 9, 9, 9, '2026-05-15'),
(10, 10, 10, 10, 10, '2026-05-15');


CREATE TABLE `transaksi_pendaftaran` (
  `id_daftar` int NOT NULL,
  `id_member` int DEFAULT NULL,
  `id_paket` int DEFAULT NULL,
  `tanggal_daftar` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_selesai` date DEFAULT NULL
);

INSERT INTO `transaksi_pendaftaran` (`id_daftar`, `id_member`, `id_paket`, `tanggal_daftar`, `tanggal_selesai`) VALUES
(1, 1, 3, '2026-05-01 01:00:00', '2026-05-31'),
(2, 2, 5, '2026-05-02 02:15:00', '2026-08-02'),
(3, 3, 4, '2026-05-03 03:30:00', '2026-07-03'),
(4, 4, 2, '2026-05-04 04:00:00', '2026-05-11'),
(5, 5, 6, '2026-05-05 07:20:00', '2026-11-05'),
(6, 6, 3, '2026-05-06 08:45:00', '2026-06-05'),
(7, 7, 1, '2026-05-07 09:00:00', '2026-05-08'),
(8, 8, 7, '2026-05-08 00:30:00', '2027-05-08'),
(9, 9, 5, '2026-05-09 06:10:00', '2026-08-09'),
(10, 10, 8, '2026-05-10 10:00:00', '2026-06-09');


ALTER TABLE `alat_gym`
  ADD PRIMARY KEY (`id_alat`);

ALTER TABLE `kelas_fitness`
  ADD PRIMARY KEY (`id_kelas`);

ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

ALTER TABLE `paket_member`
  ADD PRIMARY KEY (`id_paket`);

ALTER TABLE `pelatih`
  ADD PRIMARY KEY (`id_pelatih`);

ALTER TABLE `transaksi_latihan`
  ADD PRIMARY KEY (`id_latihan`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_pelatih` (`id_pelatih`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_alat` (`id_alat`);

ALTER TABLE `transaksi_pendaftaran`
  ADD PRIMARY KEY (`id_daftar`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_paket` (`id_paket`);

ALTER TABLE `alat_gym`
  MODIFY `id_alat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `kelas_fitness`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `member`
  MODIFY `id_member` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `paket_member`
  MODIFY `id_paket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `pelatih`
  MODIFY `id_pelatih` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `transaksi_latihan`
  MODIFY `id_latihan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `transaksi_pendaftaran`
  MODIFY `id_daftar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `transaksi_latihan`
  ADD CONSTRAINT `transaksi_latihan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`),
  ADD CONSTRAINT `transaksi_latihan_ibfk_2` FOREIGN KEY (`id_pelatih`) REFERENCES `pelatih` (`id_pelatih`),
  ADD CONSTRAINT `transaksi_latihan_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas_fitness` (`id_kelas`),
  ADD CONSTRAINT `transaksi_latihan_ibfk_4` FOREIGN KEY (`id_alat`) REFERENCES `alat_gym` (`id_alat`);

ALTER TABLE `transaksi_pendaftaran`
  ADD CONSTRAINT `transaksi_pendaftaran_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`),
  ADD CONSTRAINT `transaksi_pendaftaran_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `paket_member` (`id_paket`);
COMMIT;


UPDATE alat_gym
SET kondisi_alat = 'Rusak'
WHERE id_alat = 7;

DELETE FROM transaksi_latihan
WHERE id_latihan = 10;

SELECT m.nama, p.nama_paket, tp.tanggal_daftar
FROM transaksi_pendaftaran tp
JOIN member m
ON tp.id_member = m.id_member
JOIN paket_member p
ON tp.id_paket = p.id_paket;

SELECT nama
FROM member
WHERE id_member IN (
SELECT id_member
FROM transaksi_pendaftaran
);

CREATE VIEW v_data_member AS
SELECT m.nama, p.nama_paket, tp.tanggal_daftar
FROM transaksi_pendaftaran tp
JOIN member m
ON tp.id_member = m.id_member
JOIN paket_member p
ON tp.id_paket = p.id_paket;

SELECT * FROM v_data_member;