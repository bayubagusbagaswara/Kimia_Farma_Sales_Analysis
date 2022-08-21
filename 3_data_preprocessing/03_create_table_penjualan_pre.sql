-- untuk unit dan harga kita bisa ambil dari tabel barang_ds
create table `penjualan_pre` (
    `id_penjualan` varchar(30),
    `id_distributor` varchar(3),
    `id_cabang_sales` varchar(5),
    `id_invoice` varchar(6),
    `tanggal` date,
    `id_customer` varchar(9),
    `id_barang` varchar(7),
    `jumlah_barang` int,
    `unit` varchar(6),
    `harga` int,
    `mata_uang` varchar(3),
    `nama_brand` varchar(8),
    primary key (id_penjualan)
);