-- kolom barang_dim yang akan di aggregate ke table penjualan_fact adalah id_barang, nama_barang, brand (nama_brand), harga
create table barang_dim (
    id_barang varchar(9),
    nama_barang varchar(50),
    brand varchar(10),
    kemasan varchar(6),
    harga int,
    primary key (id_barang)
);