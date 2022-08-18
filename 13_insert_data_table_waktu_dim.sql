-- kita ambil data nya dari table penjualan
insert into waktu_dim (tanggal, hari, minggu, bulan, tahun)
select distinct date(tanggal),
    dayofweek(tanggal),
    week(tanggal),
    month(tanggal),
    year(tanggal)
from penjualan;