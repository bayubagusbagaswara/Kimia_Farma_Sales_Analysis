insert into penjualan_fact
select DISTINCT CONCAT(p.id_invoice, pd.id_customer) as id_penjualan,
    p.id_invoice,
    wd.tanggal,
    wd.minggu,
    pd.id_customer,
    pd.nama as nama_customer,
    pd.id_cabang_sales,
    pd.cabang_sales as nama_cabang_sales,
    pd.id_distributor,
    pd.group,
    bd.id_barang,
    bd.nama_barang,
    bd.brand as nama_brand,
    p.jumlah_barang as jumlah_barang_terjual,
    bd.kemasan,
    bd.harga as harga_per_kemasan,
    p.jumlah_barang * bd.harga as total_harga
FROM penjualan as p
    JOIN waktu_dim as wd ON DATE(p.tanggal) = DATE(wd.tanggal)
    JOIN barang_dim as bd ON p.id_barang = bd.id_barang
    JOIN pelanggan_dim as pd ON p.id_customer = pd.id_customer
WHERE p.lini = 'SLCYL'
    and bd.brand = 'SLCYL';