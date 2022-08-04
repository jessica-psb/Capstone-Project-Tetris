-- Total Volume dan Nilai Produksi tiap tahun
select 
	Tahun, 
	sum(VolumeProduksi) Volume_Produksi, 
	sum(NilaiProduksi) Nilai_Produksi
from produksi_perikanan pp
group by 1
order by 1

-- Top 10 Produksi Jenis Ikan terbanyak
select 
	JenisIkan, 
	sum(VolumeProduksi)
from produksi_perikanan pp
group by 1
order by 2 desc
limit 10


-- Volume Produksi tiap Provinsi
select 
	Provinsi, 
	sum(VolumeProduksi)
from produksi_perikanan pp
group by 1
order by 1

-- Rata-rata Jumlah Nelayan/Pembudidaya Tahun 2018-2020 Menurut Jenisnya
select Jenis, avg(Jumlah)
from jumlah_nelayan_dan_pembudidaya jndp
group by 1
order by 1

-- Nilai Ekspor Produksi Perikanan
select Komoditas, Nilai, Tahun
from ekspor e
