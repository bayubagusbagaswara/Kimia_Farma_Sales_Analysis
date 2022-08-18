create table pelanggan_dim (
    id_customer varchar(9),
    level varchar(10),
    nama varchar(30),
    id_cabang_sales varchar(5),
    cabang_sales varchar(10),
    id_distributor varchar(3),
    group varchar(10),
    primary key (id_customer)
);