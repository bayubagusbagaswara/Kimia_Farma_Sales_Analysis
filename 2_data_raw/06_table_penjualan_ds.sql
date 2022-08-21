CREATE TABLE `penjualan_ds` (
    `id_invoice` varchar(6),
    `tanggal` datetime,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `jumlah_barang` decimal(16, 13),
    `unit` varchar(6),
    `harga` int(11),
    `mata_uang` varchar(3)
);