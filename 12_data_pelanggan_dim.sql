-- data table pelanggan_dim kita ambil dari table pelanggan
-- data yang kita perlukan adalah id_customer, level, nama, id_cabang_sales, cabang_sales, group
insert into pelanggan_dim
select distinct id_customer,
    `level`,
    nama,
    id_cabang_sales,
    cabang_sales,
    `group`
from pelanggan;