create table `penjualan_fact`(
    `id_penjualan` varchar(30),
    `id_invoice` varchar(6),
    `tanggal` date,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `nama_brand` varchar(8),
    `jumlah_barang` int,
    `unit` varchar(6),
    `harga` int,
    `mata_uang` varchar(3),
    `total` int,
    primary key (id_penjualan)
);