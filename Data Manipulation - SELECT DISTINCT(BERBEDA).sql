/* GUNAKAN CTRL+R untuk menampilkan dan menyembunyikan result 

SQL Server SELECT DISTINCT(BERBEDA)
DISTINCT merupakan query untuk menghapus duplikasi dan hanya menampilkan baris unik dari hasil query

*/

USE BikeStores
GO

-- Step 1: Menggunakan SELECT DISTINCT pada satu kolom untuk menampilkan daftar kota unik dari tabel customers
SELECT 
	DISTINCT city
FROM
	sales.customers
ORDER BY 
	city;

-- Step 2: Menggunakan SELECT DISTINCT pada beberapa kolom untuk menampilkan kombinasi unik kota dan negara dari tabel customers
SELECT 
  DISTINCT city, state 
FROM 
  sales.customers

-- Step 3: Menggunakan SELECT DISTINCT dengan NULL untuk menampilkan nomor telepon unik dari pelanggan
SELECT 
	DISTINCT phone 
FROM 
	sales.customers
ORDER BY
	phone;




/*
Diargam kapan menggunakan DISTINCT & GROUP BY

                ┌───────────────────────────────┐
                │ Apakah hanya butuh data unik? │
                └───────────────┬───────────────┘
                                │
                       YES      │      NO
                                │
                ┌───────────────┘
                v
       ┌─────────────────────┐
       │ Gunakan DISTINCT    │
       │ (hasil baris unik)  │
       └─────────────────────┘

                                        ┌─────────────────────────────┐
                                        │ Apakah butuh perhitungan    │
                                        │ agregat (COUNT, SUM, AVG)?  │
                                        └───────────────┬─────────────┘
                                                        │
                                               YES      │
                                                        │
                                        ┌───────────────┘
                                        v
                               ┌──────────────────────────┐
                               │ Gunakan GROUP BY         │
                               │ (kelompok + agregasi)    │
                               └──────────────────────────┘

*/