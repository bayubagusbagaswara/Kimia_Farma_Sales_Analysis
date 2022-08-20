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


ALTER TABLE user CHANGE username namauser varchar(100);

# Salicyl Dashboard 
- berarti kita hanya membutuhkan Penjualan Salicyl

# Rencana yang akan kita tampilkan di dashboard
Salicyl itu adalah NAMA BRAND

Paling Atas ada kolom `Total Penjualan Salicyl`

1. Tampilan Penjualan Salicyl berdasarkan rentang tanggal `(butuh tanggal penjualan)`
2. Tampilan Penjualan Salicyl berdasarkan Nama Customer `(butuh data customer/pelanggan, ada nama-nama apotik dan klinik)`
3. Tampilan Penjualan Salicyl berdasarkan Cabang Sales `(butuh data cabang sales misal Jakarta, Aceh)`
4. Tampilan Penjualan Salicyl berdasarkan Group `(butuh data Group, misal Apotik, Klinik)`
5. Tampilan Penjualan Salicyl berdasarkan Nama Barang `(salicyl memiliki 2 jenis barang)`

# Table Pelanggan_dim
- id_customer
- level
- nama
- cabang_sales
- group

# Table Barang_dim
- kode_barang alias id_barang
- nama_barang
- kemasan
- harga

# Tabel Pertama yang ada di Data Warehouse
1. Table Barang (sudah fix)
2. Tabel Pelanggan (kita ambil dari data pelanggan_ds.csv), kita buat lagi
3. Table Penjualan (sudah fix), kita ambil dari penjualan.csv

# Langkah Selanjutnya
- Bagaimana import dari sql menjadi csv?
- Lalu file yang ada di dalam folder dataset (file csv semua) kita hapus semua, kita hanya butuh data `barang.csv`, `penjualan.csv`, `pelanggan.csv`, dan `penjualan_fact`