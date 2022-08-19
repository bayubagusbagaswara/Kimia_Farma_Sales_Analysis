-- kita create table penjualan_fact berdasarkan select dari table penjualan
-- kita tambahkan kolom TOTAL_PENJUALAN
-- kolom harga kita akan ambil dari table barang
-- kita hanya butuh data/kolom dari table penjualan adalah id_waktu, id_distributor, id_cabang, id_invoice, tanggal, id_customer, id_barang, jumlah_barang, lini
create table penjualan_fact (
    id_distributor varchar(3),
    id_cabang varchar(5),
    id_invoice varchar(6),
    tanggal date,
    id_customer varchar(9),
    id_barang varchar(7),
    id_brand varchar(7),
    jumlah_barang int(5),
    lini varchar(10),
    harga int,
    total_sales int
);
-- create baru
CREATE TABLE aggregate_new AS(
    SELECT p.id_distributor,
        p.id_invoice,
        p.tanggal,
        p.brand_id,
        p.jumlah_barang,
        p.unit,
        p.mata_uang,
        p.id_customer,
        pd.nama as nama_customer,
        p.id_cabang,
        pd.cabang_sales as cabang_sales,
        pd.group as `group`,
        p.id_barang,
        bd.nama_barang as nama_barang,
        bd.lini,
        bd.kemasan as kemasan,
        bd.harga
    FROM penjualan as p
        JOIN barang_dim as bd ON p.id_barang = bd.id_barang
        JOIN pelanggan_dim as pd ON p.id_customer = pd.id_customer
);
-- baruu
CREATE TABLE aggregat_table AS(
    SELECT p.id_distributor,
        p.id_invoice,
        p.tanggal,
        p.brand_id,
        p.jumlah_barang,
        p.id_customer,
        p.id_cabang,
        p.id_barang
    FROM penjualan as p
);