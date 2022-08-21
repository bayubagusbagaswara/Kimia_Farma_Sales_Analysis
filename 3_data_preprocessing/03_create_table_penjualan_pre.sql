-- kita join antara table penjualan dan table penjualan_ds berdasarkan id_barang
-- tujuannya untuk mengambil harga dan kemasan/unit yang berada di table penjualan_ds
-- pada table penjualan kita hanya mengambil id_distributor, id_cabang, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, mata_uang, brang_id, lini (nama_brand)
create table `penjualan_pre` (
    `id_penjualan` varchar(30),
    `id_cabang`
);