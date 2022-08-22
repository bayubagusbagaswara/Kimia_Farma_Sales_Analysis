insert into penjualan_fact(
        id_penjualan,
        id_invoice,
        tanggal,
        id_customer,
        id_barang,
        nama_brand,
        jumlah_barang,
        unit,
        harga,
        mata_uang,
        total
    )
select p.id_penjualan as id_penjualan,
    p.id_invoice as id_invoice,
    wd.tanggal as tanggal,
    pd.id_customer as id_customer,
    bd.id_barang as id_barang,
    bd.nama_brand as nama_brand,
    p.jumlah_barang as jumlah_barang,
    p.unit as unit,
    bd.harga as harga_per_kemasan,
    p.mata_uang as mata_uang,
    p.jumlah_barang * bd.harga as total
FROM penjualan_pre as p
    JOIN waktu_dim as wd ON DATE(p.tanggal) = DATE(wd.tanggal)
    JOIN barang_dim as bd ON p.id_barang = bd.id_barang
    JOIN pelanggan_dim as pd ON p.id_customer = pd.id_customer;