insert into pelanggan_pre
select p.id_customer,
    p.level,
    p.nama,
    p.id_cabang_sales,
    p.cabang_sales,
    pd.id_distributor,
    pd.group
FROM pelanggan as p
    INNER JOIN pelanggan_ds as pd ON p.id_customer = pd.id_customer;