CREATE TABLE `penjualan` (
    `id_distributor` varchar(3),
    `id_cabang` varchar(5),
    `id_invoice` varchar(6),
    `tanggal` datetime,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `jumlah_barang` decimal(16, 13),
    `unit` varchar(3),
    `harga` decimal(7, 2),
    `mata_uang` varchar(3),
    `brand_id` varchar(7),
    `lini` varchar(8)
);