-- Define the tables
-- table barang, barang_ds, penjualan, penjualan_ds, pelangga, pelanggan_ds
-- table barang
create table barang(
    kode_barang varchar(7),
    sektor varchar(1),
    nama_barang varchar(41),
    tipe varchar(4),
    nama_tipe varchar(11),
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
    group varchar(6)
);
-- table pelanggan_ds
create table pelanggan_ds(
    id_customer varchar(9),
    level varchar(7),
    nama varchar(17),
    id_cabang_sales varchar(5),
    cabang_sales varchar(9),
    id_distributor varchar(3),
    group varchar
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
    harga decimal(7, 2),
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
    harga decimal(7, 2),
    mata_uang varchar(3)
);
-- Import csv data to the database
-- Make sure dataset path (in local storage) must be complete until the file_name.csv
COPY penjualan(
    id_invoice,
    tanggal,
    id_customer,
    id_barang,
    jumlah_barang,
    unit,
    harga,
    mata_uang
) -- C:\Users\bagaswara\Documents\VIX\Kimia_Farma_Sales_Analysis\penjualan.csv
FROM 'E:\Rakamin\JAP\Big Data Analytics - Kimia Farma\penjualan.csv' DELIMITER ',' CSV HEADER;
COPY pelanggan(
    id_customer,
    level,
    nama,
    id_cabang_sales,
    cabang_sales,
    id_distributor,
    grup
)
FROM 'E:\Rakamin\JAP\Big Data Analytics - Kimia Farma\pelanggan.csv' DELIMITER ',' CSV HEADER;
COPY barang(
    kode_barang,
    nama_barang,
    kemasan,
    harga,
    nama_tipe,
    kode_brand,
    brand
)
FROM 'E:\Rakamin\JAP\Big Data Analytics - Kimia Farma\barang.csv' DELIMITER ',' CSV HEADER;