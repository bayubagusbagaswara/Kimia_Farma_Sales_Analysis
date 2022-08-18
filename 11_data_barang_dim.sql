-- data table barang_dim kita ambil dari data table barang
-- data yang kita perlukan adalah kode_barang, nama_barang, lini, kemasan, dan harga
insert into barang_dim
select distinct kode_barang,
    nama_barang,
    lini,
    kemasan,
    harga
from barang;