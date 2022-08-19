insert into penjualan_fact_new
select p.id_distributor,
    p.id_invoice,
    p.tanggal,
    wd.id_waktu,
    wd.minggu,
    wd.bulan,
    p.id_customer,
    pd.level,
    pd.nama_customer,
    pd.id_cabang_sales,
    pd.nama_cabang_sales,
    pd.group,
    p.id_barang,
    bd.nama_barang,
    bd.brand as nama_brand,
    bd.harga as harga_per_kemasan p.jumlah_barang,
    p.unit,
    p.jumlah_barang * bd.harga as total_penjualan
FROM penjualan as p
    JOIN waktu_dim as wd ON p.tanggal = wd.tanggal
    JOIN barang_dim as bd ON p.id_barang = bd.id_barang
    JOIN pelanggan_dim as pd ON p.id_customer = pd.id_customer;