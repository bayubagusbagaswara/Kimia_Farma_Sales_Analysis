-- table aggregation
create table penjualan_fact (
    id_penjualan varchar(15),
    id_invoice varchar(6),
    tanggal date,
    id_customer varchar(9),
    `level` varchar(10),
    nama_customer varchar(17),
    id_cabang_sales varchar(5),
    nama_cabang_sales varchar(9),
    id_distributor varchar(3),
    `group` varchar(6),
    id_barang varchar(7),
    nama_barang varchar(41),
    nama_brand varchar(10),
    harga_per_kemasan int,
    jumlah_barang int,
    unit varchar(6),
    total_penjualan int
);