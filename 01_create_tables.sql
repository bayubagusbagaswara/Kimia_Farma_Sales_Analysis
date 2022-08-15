-- Define the tables
-- table barang, barang_ds, penjualan, penjualan_ds, pelangga, pelanggan_ds
-- table barang
create table barang(
    kode_barang varchar(7),
    sektor varchar(1),
    nama_barang varchar(41),
    tipe varchar(4),
    nama_tipe varchar(11),
    kode_lini int,
    lini varchar(8),
    kemasan varchar(6)
);
-- table barang_ds
create table barang_ds(
    kode_barang varchar(7),
    nama_barang varchar(41),
    kemasan varchar(6),
    harga int(11),
    nama_tipe varchar(11),
    kode_brand int(11),
    brand varchar(8)
);
-- table pelanggan
create table pelanggan(
    id_customer varchar(9),
    level varchar(7),
    nama varchar(17),
    id_cabang_sales varchar(5),
    cabang_sales varchar(9),
    id_group varchar(3),
    grup varchar(6)
);
-- table pelanggan_ds
create table pelanggan_ds(
    id_customer varchar(9),
    level varchar(7),
    nama varchar(17),
    id_cabang_sales varchar(5),
    cabang_sales varchar(9),
    id_distributor varchar(3),
    grup varchar(6)
);
-- table penjualan
create table penjualan(
    id_distributor varchar(3),
    id_cabang varchar(5),
    id_invoice varchar(6),
    tanggal date,
    id_customer varchar(9),
    id_barang varchar(7),
    jumlah_barang int,
    unit varchar(3),
    harga int,
    mata_uang varchar(3),
    brand_id varchar(7),
    lini varchar(8)
);
-- table penjualan_ds
create table penjualan_ds(
    id_invoice varchar(6),
    tanggal date,
    id_customer varchar(9),
    id_barang varchar(7),
    jumlah_barang int,
    unit varchar(6),
    harga int,
    mata_uang varchar(3)
);
-- import data csv lalu masukkan kedalam table di database
-- Make sure dataset path (in local storage) must be complete until the file_name.csv
-- COPY DATA PENJUALAN
COPY penjualan (
    id_distributor,
    id_cabang,
    id_invoice,
    tanggal,
    id_customer,
    id_barang,
    jumlah_barang,
    unit,
    harga,
    mata_uang,
    brand_id,
    lini
)
FROM 'C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\datasets\penjualan.csv' DELIMITER ',' CSV HEADER;
-- COPY DATA PENJUALAN_DS
COPY penjualan_ds(
    id_invoice,
    tanggal,
    id_customer,
    id_barang,
    jumlah_barang,
    unit,
    harga,
    mata_uang
)
FROM 'C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\datasets\penjualan_ds.csv' DELIMITER ',' CSV HEADER;
-- COPY DATA PELANGGAN
COPY pelanggan(
    id_customer,
    level,
    nama,
    id_cabang_sales,
    cabang_sales,
    id_group,
    grup
)
FROM 'C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\datasets\pelanggan.csv' DELIMITER ',' CSV HEADER;
-- COPY DATA PELANGGAN_DS
COPY pelanggan_ds(
    id_customer,
    level,
    nama,
    id_cabang_sales,
    cabang_sales,
    id_distributor,
    grup
)
FROM 'C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\datasets\pelanggan_ds.csv' DELIMITER ',' CSV HEADER;
-- COPY DATA TABLE BARANG
COPY barang(
    kode_barang,
    sektor,
    nama_barang,
    tipe,
    nama_tipe,
    kode_lini,
    lini,
    kemasan
)
FROM 'C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\datasets\barang.csv' DELIMITER ',' CSV HEADER;
-- COPY DATA TABLE BARANG_DS
COPY barang_ds(
    kode_barang,
    nama_barang,
    kemasan,
    harga,
    nama_tipe,
    kode_brand,
    brand
)
FROM 'C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\datasets\barang_ds.csv' DELIMITER ',' CSV HEADER;