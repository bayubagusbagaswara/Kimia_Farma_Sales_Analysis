# Kimia Farma Sales Analysis

# Config database

- Nama Database     : sales_db
- User Database     : admin
- Password Database : admin



1. Kita akan buat 3 table ke database. Table tersebut adalah `tbl_penjualan`, `tbl_pelanggan`, `tbl_barang`
2. Lalu kita masukkan (import) data dari csv ke table-table tersebut. Jadi kita sudah menyiakpan `penjualan.csv`, `pelanggan.csv`, `barang.csv`
3. Lalu kita buat `base table` dari 3 table yang sudah ada (kita join untuk lalu memasukkan ke base table). Lalu export menjadi CSV beserta data-datanya
4. Setelah itu kita buat `aggregate table` atau `table fact`. Aggregate table kita dapatkan dari base table

# Catatatan

- Kita sudah berhasil membuat table barang, barang_ds, pelanggan, pelanggan_ds, penjualan, dan penjualan_ds. Datanya kita ambil dari file excel.
- Selanjutnya kita akan menentukan table base, dimana kita akan menentukan table dimension.

# Table Dimension atau Table Base
- Intinya kita pecah-pecah data menjadi table-table spesifik

# Table Aggregate atau Table Fact
- Intinya ini adalah table utama yang akan kita gunakan untuk visualization.
- Table ini dibuat berdasarkan table base atau table dimension