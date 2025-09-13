/*
SQL Server OR Operator

*/

USE BikeStores
GO 

-- 1. Contoh berikut menggunakan operator OR untuk menemukan produk yang harga daftarnya kurang dari 200 atau lebih besar dari 6.000:
SELECT 
	product_name,
	list_price
FROM 
	production.products
WHERE 
	list_price < 200
OR list_price > 6000
ORDER BY 
	list_price;
	
-- 2. Pernyataan berikut menggunakan beberapa operator OR untuk menemukan produk yang id mereknya adalah 1, 2, atau 4:
SELECT 
	product_name,
	brand_id
FROM 
	production.products
WHERE 
	brand_id = 1
OR brand_id = 2
OR brand_id = 4
ORDER BY 
	brand_id DESC;

-- Bisa juga mengganti OR menggunakan IN 
SELECT 
	product_name,
	brand_id
FROM 
	production.products
WHERE 
	brand_id IN (1,2,3)
ORDER BY 
	brand_id DESC;
	
-- 3. Contoh berikut menunjukkan cara menggabungkan OR operator dengan AND operator dalam ekspresi yang sama:
SELECT 
	product_name,
	brand_id,
	list_price
FROM 
	production.products
WHERE
	brand_id = 1
		OR brand_id = 2
		AND list_price > 500
ORDER BY 
	brand_id DESC,
	list_price;
	
-- 4. Untuk menemukan produk yang id mereknya 1 atau 2 dan harga daftar lebih besar dari 500, Anda menggunakan tanda kurung seperti yang ditunjukkan pada kueri berikut:
SELECT 
	product_name,
	brand_id,
	list_price 
FROM 
	production.products
WHERE 
	(brand_id = 1 OR brand_id = 2)
	AND list_price > 500
ORDER BY 
	brand_id;

























