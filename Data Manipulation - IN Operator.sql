/*
SQL Server IN Operator

*/

-- 1. Pernyataan berikut menggunakan IN operator untuk menemukan produk yang harga daftarnya adalah salah satu dari nilai berikut: 89,99, 109,99, dan 159,99:
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price IN (89.99, 109.99, 159.99)
ORDER BY
    list_price;
		
-- Kueri di atas setara dengan kueri berikut yang menggunakan OR operator sebaliknya:
SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price = 89.99 OR list_price = 109.99 OR list_price = 159.99
ORDER BY
    list_price;
		
-- Untuk mencari produk yang daftar harganya bukan salah satu dari harga 89,99, 109,99, dan 159,99, Anda menggunakan NOT IN operator. Misalnya:

SELECT
    product_name,
    list_price
FROM
    production.products
WHERE
    list_price NOT IN (89.99, 109.99, 159.99)
ORDER BY
    list_price;
		
/*
2) Menggunakan operator SQL Server IN dengan contoh subquery
- Kueri berikut mengembalikan daftar nomor identifikasi produk dari produk yang terletak di toko id 1 dan memiliki kuantitas lebih besar dari atau sama dengan 30:
*/
SELECT 
	product_id
FROM 
	production.stocks
WHERE 
	stored_id = 1 AND quantity >= 30;
	
-- Anda dapat menggunakan kueri di atas sebagai a subquery seperti yang ditunjukkan pada query berikut:
SELECT 
	product_name, 
	list_price
FROM 
	production.products
WHERE 
	product_id IN (
		SELECT 
			product_id
		FROM 
			production.stocks
		WHERE 
			store_id = 1 AND quantity >= 30 
	)
ORDER BY 
	product_name












