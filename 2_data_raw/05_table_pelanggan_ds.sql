create table `pelanggan_ds` (
    `id_customer` varchar(9),
    `level` varchar(7),
    `nama` varchar(17),
    `id_cabang_sales` varchar(5),
    `cabang_sales` varchar(9),
    `id_distributor` varchar(3),
    `group` varchar(6),
    primary key (id_customer)
);