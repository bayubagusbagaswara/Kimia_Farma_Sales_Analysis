create table `barang` (
    `kode_barang` varchar(7),
    `sektor` varchar(1),
    `nama_barang` varchar(41),
    `tipe` varchar(4),
    `nama_tipe` varchar(11),
    `kode_lini` int(11),
    `lini` varchar(8),
    `kemasan` varchar(6),
    primary key (kode_barang)
);