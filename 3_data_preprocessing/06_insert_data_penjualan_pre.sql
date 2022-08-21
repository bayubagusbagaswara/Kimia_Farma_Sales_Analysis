insert into penjualan_pre
select distinct CONCAT(p.id_invoice, p.id_customer) as id_penjualan,
    p.id_distributor,
    p.id_cabang as id_cabang_sales,
    p.id_invoice,
    p.tanggal,
    p.id_customer,
    p.id_barang,
    p.jumlah_barang,
    pd.kemasan as unit,
    pd.harga,
    p.mata_uang,
    pd.nama_brand
FROM penjualan as p
    INNER JOIN barang_pre as pd ON p.id_barang = pd.id_barang;