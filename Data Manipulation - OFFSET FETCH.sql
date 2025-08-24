/*
** SQL Server OFFSET FETCH

OFFSET-FETCH pada SQL Server adalah cara yang efisien untuk menampilkan data per halaman (pagination).
Ini memungkinkan Anda untuk melewati sejumlah baris tertentu dan kemudian mengambil baris berikutnya yang Anda butuhkan.

OFFSET : jumlah baris yang dilewati sebelum menampilkan hasil (>=0, wajib)
FETCH  : jumlah baris yang ditampilkan setelah OFFSET (>=1, opsional)
FIRST/NEXT dan ROW/ROWS bisa digunakan bergantian

PENTING!: harus digunakan bersama ORDER BY, jika tidak akan error
*/

-- PRAKTIK:

use BikeStores
go

-- 1. menggunakan data products
SELECT 
	product_name,
	list_price
FROM
	production.products
ORDER BY
	list_price,
	product_name;

-- 2. Melewati 10 baris pertama lalu mengembalikan sisa hasil dengan OFFSET
SELECT 
	product_name,
	list_price
FROM
	production.products
ORDER BY
	list_price,
	product_name
OFFSET 10 ROWS;

-- 3. Melewati 10 baris pertama lalu ambil 10 baris berikutnya dengan OFFSET dan FETCH
SELECT 
	product_name,
	list_price
FROM
	production.products
ORDER BY
	list_price,
	product_name
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

-- 4. Mengambil 10 produk teratas dengan harga tertinggi menggunakan OFFSET FETCH
SELECT 
	product_name,
	list_price
FROM
	production.products
ORDER BY
	list_price DESC,
	product_name
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;
