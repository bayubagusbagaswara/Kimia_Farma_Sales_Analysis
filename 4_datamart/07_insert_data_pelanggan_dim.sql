insert into pelanggan_dim(
        id_customer,
        nama,
        id_cabang_sales,
        cabang_sales,
        id_distributor,
        `group`
    )
select distinct p.id_customer as id_customer,
    p.nama as nama,
    p.id_cabang_sales as id_cabang_sales,
    p.cabang_sales as cabang_sales,
    p.id_distributor as id_distributor,
    p.group as `group`
from pelanggan_pre as p;