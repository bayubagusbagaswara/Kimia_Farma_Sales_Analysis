-- TABLE PELANGGAN_DIM
create table pelanggan_dim (
    id_pelanggan varchar(9),
    level varchar(10),
    nama varchar(30),
    cabang_sales varchar(10),
    group varchar(10),
    primary key (id_pelanggan)
);