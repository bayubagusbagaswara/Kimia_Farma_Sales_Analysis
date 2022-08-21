insert into barang_pre
select b.kode_barang as id_barang,
    b.nama_barang as nama,
    b.nama_tipe as nama_tipe,
    bd.kemasan,
    bd.harga,
    bd.kode_brand,
    bd.brand as nama_brand
FROM barang as b
    INNER JOIN barang_ds as bd ON b.kode_barang = bd.kode_barang;