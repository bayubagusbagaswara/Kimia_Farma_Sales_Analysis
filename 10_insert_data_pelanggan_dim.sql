-- data table pelanggan_dim kita ambil dari table pelanggan
insert into pelanggan_dim
select distinct id_customer,
    `level`,
    nama,
    id_cabang_sales,
    cabang_sales,
    id_distributor,
    `group`
from pelanggan;