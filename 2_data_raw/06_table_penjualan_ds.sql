create table `penjualan_ds` (
    `id_invoice` varchar(6),
    `tanggal` date,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `jumlah_barang` int,
    `unit` varchar(6),
    `harga` int,
    `mata_uang` varchar(3)
);