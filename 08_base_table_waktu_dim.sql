create table waktu_dim (
    id_waktu int auto_increment,
    tanggal date,
    hari int,
    minggu int,
    bulan int,
    tahun year,
    primary key (id_waktu)
);