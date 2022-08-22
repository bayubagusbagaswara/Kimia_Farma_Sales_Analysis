create table `waktu_dim` (
    `id_waktu` int auto_increment primary key,
    `tanggal` date,
    `hari` int,
    `nama_hari` varchar(10),
    `minggu` int,
    `bulan` int,
    `nama_bulan` varchar(10),
    `tahun` year
);