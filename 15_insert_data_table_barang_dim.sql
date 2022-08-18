insert into barang_dim
select distinct b.kode_barang,
    b.nama_barang,
    b.sektor,
    b.nama_tipe,
    b.lini,
    b.kemasan,
    bd.harga
from barang b
    join barang_ds bd using(kode_barang);