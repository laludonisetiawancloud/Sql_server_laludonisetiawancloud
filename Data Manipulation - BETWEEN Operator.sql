/*
SQL Server BETWEEN Operator
Between operator adalah operator logis yang memungkinkan kita untuk menentukan rentang data yang akan diuji.
*/

USE BikeStores
GO 

/**/

/*Menggunakan SQL Server BETWEEN dengan contoh angka
- Kueri berikut menemukan produk yang daftar harganya antara 149,99 dan 199,99:
*/
SELECT 
	product_id,
	product_name,
	list_price
FROM
	production.products
WHERE 
	list_price BETWEEN 149.99 AND 199.99
ORDER BY list_price

/*
Untuk mendapatkan produk yang daftar harganya tidak berada pada kisaran 149,99 dan 199,99, 
Anda menggunakan NOT BETWEEN operator sebagai berikut:
*/

SELECT 
	product_id,
	product_name,
	list_price
FROM
	production.products
WHERE 
	list_price NOT BETWEEN 149.99 AND 199.99
ORDER BY list_price

/*Menggunakan SQL Server BETWEEN dengan contoh tanggal
- Kueri berikut menemukan pesanan yang dilakukan pelanggan January 15, 2017 and January 17, 2017:*/
SELECT
    order_id,
    customer_id,
    order_date,
    order_status
FROM
    sales.orders
WHERE
    order_date BETWEEN '20170115' AND '20170117'
ORDER BY
    order_date;

/*
Perhatikan bahwa untuk menentukan tanggal literal, Anda menggunakan format ‘YYYYMMDD‘ dimana YYYY adalah 4-digit tahun mis., 2017, MM adalah 2-digit bulan mis., 01 dan DD adalah 2-digit hari mis., 15.
*/