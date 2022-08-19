-- table aggregation
create table penjualan_fact_new (
    id_distributor varchar(3) as "ID Distributor",
    id_invoice varchar(6) as "ID Invoice",
    tanggal datetime as "Tanggal",
    minggu int as "Minggu",
    bulan int as "Bulan",
    id_customer varchar(9) as "ID Customer",
    `level` varchar(10) as "Level",
    nama_customer varchar(17) as "Nama Customer",
    id_cabang_sales varchar(5) as "ID Cabang Sales",
    nama_cabang_sales varchar(9) as "Nama Cabang Sales",
    `group` varchar(6) as "Group",
    id_barang varchar(7) as "ID Barang",
    nama_barang varchar(41) as "Nama Barang",
    nama_brand varchar(10) as "Nama Brand",
    harga_per_kemasan int as "Harga per Kemasan",
    jumlah_barang int as "Jumlah Barang",
    unit varchar(6) as "Unit",
    total_penjualan int as "Total Penjualan"
);
-- tanpa nama ganti
create table penjualan_fact_new (
    id_distributor varchar(3),
    id_invoice varchar(6),
    tanggal date,
    id_waktu int,
    minggu int,
    bulan int,
    id_customer varchar(9),
    `level` varchar(10),
    nama_customer varchar(17),
    id_cabang_sales varchar(5),
    nama_cabang_sales varchar(9),
    `group` varchar(6),
    id_barang varchar(7),
    nama_barang varchar(41),
    nama_brand varchar(10),
    harga_per_kemasan int,
    jumlah_barang int,
    unit varchar(6),
    total_penjualan int
);