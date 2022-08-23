insert into penjualan_aggregation(
        id_penjualan,
        id_invoice,
        tanggal,
        hari,
        nama_hari,
        minggu,
        bulan,
        nama_bulan,
        tahun,
        id_customer,
        nama_customer,
        id_cabang_sales,
        cabang_sales,
        id_distributor,
        `group`,
        id_barang,
        nama_barang,
        nama_brand,
        jumlah_barang,
        harga,
        mata_uang,
        unit,
        total
    )
select p.id_penjualan as id_penjualan,
    p.id_invoice as id_invoice,
    wd.tanggal as tanggal,
    wd.hari as hari,
    wd.nama_hari as nama_hari,
    wd.minggu as minggu,
    wd.bulan as bulan,
    wd.nama_bulan as nama_bulan,
    wd.tahun as tahun,
    pd.id_customer as id_customer,
    pd.nama as nama_customer,
    pd.id_cabang_sales as id_cabang_sales,
    pd.cabang_sales as cabang_sales,
    pd.id_distributor as id_distributor,
    pd.group,
    bd.id_barang as id_barang,
    bd.nama as nama_barang,
    bd.nama_brand as nama_brand,
    p.jumlah_barang as jumlah_barang,
    p.harga as harga,
    p.mata_uang as mata_uang,
    p.unit as unit,
    p.total as total
FROM penjualan_fact as p
    JOIN waktu_dim as wd ON DATE(p.tanggal) = DATE(wd.tanggal)
    JOIN barang_dim as bd ON p.id_barang = bd.id_barang
    JOIN pelanggan_dim as pd ON p.id_customer = pd.id_customer
WHERE p.nama_brand = 'SLCYL'
    and bd.nama_brand = 'SLCYL';