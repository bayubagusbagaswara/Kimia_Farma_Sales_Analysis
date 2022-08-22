INSERT INTO waktu_dim (
        tanggal,
        hari,
        nama_hari,
        minggu,
        bulan,
        nama_bulan,
        tahun
    )
SELECT DISTINCT DATE(tanggal),
    DAYOFWEEK(tanggal),
    DAYNAME(tanggal),
    WEEK(tanggal),
    MONTH(tanggal),
    MONTHNAME(tanggal),
    YEAR(tanggal)
FROM penjualan;