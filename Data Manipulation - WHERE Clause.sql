/* GUNAKAN CTRL+R untuk menampilkan dan menyembunyikan result 

SQL Server WHERE Clause

*/

USE BikeStores
GO

-- Step 1: Menggunakan WHERE dengan operator = untuk mengambil produk dengan category_id = 1

SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM 
	production.products
WHERE
	category_id = 1
ORDER BY 
	list_price  DESC;
	
--Step 2: Menggunakan WHERE dengan operator AND untuk mengambil produk dengan category_id = 1 dan model_year = 2018

SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	category_id = 1 AND model_year = 2018
ORDER BY 
	list_price DESC;
	
-- Step 3: Menggunakan WHERE dengan operator perbandingan untuk mengambil produk dengan list_price > 300 dan model_year = 2018
SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price > 300 AND model_year = 2018
ORDER BY 
	list_price DESC;

-- Step 4: menemukan produk yang memenuhi salah satu kondisi: daftar harga lebih besar dari 3.000 atau model 2018
SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price > 3000 OR model_year = 2018
ORDER BY 
	list_price DESC;

-- Step 5: memfilter produk dengan list_price antara 1899 dan 1999.99. Klausa BETWEEN memilih nilai dalam rentang tertentu secara inklusif (batas bawah dan atas ikut dihitung).
SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price BETWEEN 1899.00 AND 1999.99
ORDER BY 
	list_price DESC;

-- Step 6: Contoh berikut menggunakan IN operator untuk menemukan produk dengan daftar harga 299,99, 466,99, atau 489,99.
SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	list_price IN (299.99, 369.99, 489.99)
ORDER BY 
	list_price DESC;

-- Step 7: Contoh berikut menggunakan LIKE operator untuk menemukan produk yang namanya mengandung string Cruiser
SELECT
	product_id,
	product_name,
	category_id,
	model_year,
	list_price
FROM
	production.products
WHERE 
	product_name LIKE '%Cruiser%'
ORDER BY 
	list_price DESC;