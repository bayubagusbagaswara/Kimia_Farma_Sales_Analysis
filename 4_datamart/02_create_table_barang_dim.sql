-- kita buat table barang_dim
-- kita referensi dari barang_pre
-- barang_dim hanya memerlukan data
create table `barang_dim`(
    `id_barang` varchar(7),
    `nama` varchar(41),
    `kemasan` varchar(6),
    `harga` int,
    `nama_brand` varchar(8),
    primary key (id_barang)
);