-- coba kita isi data table penjualan_fact dari table penjualan
-- urutan datanya id_waktu, id_distributor, id_cabang, id_invoice, tanggal, id_customer, id_barang, id_brand, jumlah_barang, lini, harga
-- Untuk informasi data Customer kita memerlukan data id_customer, level, nama_customer, cabang_sales, group
-- Untuk informasi data Barang kita memerlukan data id_barang, nama_barang, kemasan, harga
INSERT INTO penjualan_fact
SELECT p.id_distributor,
    p.id_invoice,
    p.tanggal,
    p.brand_id,
    p.jumlah_barang,
    p.id_customer,
    p.id_cabang,
    p.id_barang,
    p.lini,
    bd.harga
FROM penjualan as p
    JOIN barang_dim as bd ON p.id_barang = bd.id_barang;