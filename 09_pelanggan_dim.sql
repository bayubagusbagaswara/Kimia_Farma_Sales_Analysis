-- data yang kita perlukan id_customer, level, nama, id_cabang_sales, cabang_sales, group
create table pelanggan_dim (
    id_customer varchar(9),
    `level` varchar(10),
    nama varchar(30),
    id_cabang_sales varchar(5),
    cabang_sales varchar(10),
    `group` varchar(10),
    primary key (id_customer)
);