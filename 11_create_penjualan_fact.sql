create table penjualan_fact (
    id_penjualan varchar(15),
    id_invoice varchar(6),
    tanggal date,
    minggu int,
    id_customer varchar(9),
    nama_customer varchar(17),
    id_cabang_sales varchar(5),
    nama_cabang_sales varchar(9),
    id_distributor varchar(3),
    `group` varchar(6),
    id_barang varchar(7),
    nama_barang varchar(41),
    nama_brand varchar(10),
    jumlah_barang_terjual int,
    kemasan varchar(6),
    harga_per_kemasan int,
    total_harga int
);