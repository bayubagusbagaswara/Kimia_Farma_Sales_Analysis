insert into pelanggan_dim
select distinct id_customer,
    `level`,
    nama,
    cabang_sales,
    `group`
from pelanggan;