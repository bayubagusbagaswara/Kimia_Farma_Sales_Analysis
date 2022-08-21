-- kita akan join table barang dan table barang_ds
-- kita hanya membutuhkan data id_barang, nama, kemasan, harga, kode_brand, nama_brand, nama_tipe
create table barang_pre (
    id_barang varchar(7),
    nama varchar(41),
    nama_tipe varchar(11),
    kemasan varchar(6),
    harga int,
    kode_brand int,
    nama_brand varchar(8),
    primary key (id_barang)
);