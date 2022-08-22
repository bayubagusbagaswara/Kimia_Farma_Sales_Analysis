-- insert ke table barang_dim
insert into barang_dim(id_barang, nama, kemasan, harga, nama_brand)
select distinct b.id_barang as id_barang,
    b.nama as nama,
    b.kemasan as kemasan,
    b.harga as harga,
    b.nama_brand as nama_brand
from barang_pre as b;