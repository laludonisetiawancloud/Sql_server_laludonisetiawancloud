/* GUNAKAN CTRL+R untuk menampilkan dan menyembunyikan result 

SQL Server DAN Operator

*/

-- 1. Contoh berikut menggunakan AND operator untuk menemukan produk dengan kategori ID 1 dan daftar harga lebih besar dari 400
USE BikeStores
GO 

SELECT 
	*
FROM 
	production.products
WHERE 
	category_id = 1
	AND list_price > 400
ORDER BY 
	list_price DESC;
	
	
-- 2. Pernyataan berikut menggunakan operator AND untuk menemukan produk yang memenuhi semua kondisi berikut: ID kategori adalah 1, harga daftar lebih besar dari 400, dan ID merek adalah 1:
SELECT 
	*
FROM 
	production.products
WHERE 
	category_id = 1
	AND list_price > 400
	AND brand_id = 1
ORDER BY 
	list_price DESC;
	
-- 3. Contoh berikut menunjukkan cara menggunakan AND dengan OR operator:

SELECT 
	*
FROM 
	production.products
WHERE 
	brand_id = 1
OR brand_id = 2
AND list_price > 1000
ORDER BY 
	brand_id DESC;

-- SQL Server selalu mengevaluasi AND operator dulu. tanda kurung akan di eksekusi terlebih dahulu 
-- 4. Untuk mengambil produk dengan ID merek 1 atau 2 dan daftar harga lebih besar dari 1.000, Anda dapat menggunakan tanda kurung sebagai berikut:
SELECT 
	*
FROM 
	production.products
WHERE 
	(brand_id = 1 OR brand_id = 2)
ORDER BY 
	brand_id;
