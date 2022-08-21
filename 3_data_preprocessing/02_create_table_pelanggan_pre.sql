-- kita akan join table pelanggan dan pelanggan_ds berdasarkan
-- kita hanya butuh data id_customer, level, nama, id_cabang_sales, nama_sales, id_distributor, group
create table `pelanggan_pre` (
    `id_customer` varchar(9),
    `level` varchar(7),
    `nama` varchar(17),
    `id_cabang_sales` varchar(5),
    `cabang_sales` varchar(9),
    `id_distributor` varchar(3),
    `group` varchar(6),
    primary key (id_customer)
)