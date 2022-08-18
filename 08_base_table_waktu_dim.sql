-- kita buat table base, meliputi waktu_dim, pelanggan_dim, dan barang_dim
-- TABLE WAKTU_DIM
create table waktu_dim (
    id_waktu int,
    tanggal date,
    hari int,
    minggu int,
    bulan int,
    tahun year,
    primary key (id_waktu)
);