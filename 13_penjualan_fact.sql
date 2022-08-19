-- kita create table penjualan_fact berdasarkan select dari table penjualan
-- kita tambahkan kolom TOTAL_PENJUALAN
-- kolom harga kita akan ambil dari table barang
-- kita hanya butuh data/kolom dari table penjualan adalah id_waktu, id_distributor, id_cabang, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, lini
create table penjualan_fact (
    id_waktu int,
    id_distributor varchar(3),
    id_cabang varchar(5),
    id_invoice varchar(6),
    tanggal date,
    id_customer varchar(9),
    id_barang varchar(7),
    id_brand varchar(7),
    jumlah_barang int(5),
    lini varchar(10),
    harga int
);