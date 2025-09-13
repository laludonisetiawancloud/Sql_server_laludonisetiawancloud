/*
SQL Server SELECT TOP

SELECT TOP: 
- membatasi jumlah atau persentase baris yang dikembalikan dari tabel.
- harus digunakan dengan ORDER BY agar hasil terbatas sesuai urutan N baris pertama.

## Syntax:

SELECT TOP (expression) [PERCENT]
    [WITH TIES]
FROM 
    table_name
ORDER BY 
    column_name;

### Penjelasan query:
PERCENT: mengembalikan N persen baris pertama sesuai nilai ekspresi
WITH TIES: mengembalikan baris tambahan jika nilainya sama dengan baris terakhir; hasil bisa lebih banyak dari jumlah yang ditentukan

*/

use BikeStores
go

-- Step 1: mengembalikan 10 produk dengan harga tertinggi dari tabel production.products
SELECT TOP 10
    product_name, 
    list_price
FROM
    production.products
ORDER BY 
    list_price DESC;

-- Step 2: Menggunakan SELECT TOP untuk mengembalikan persentase baris dari tabel
SELECT TOP 1 PERCENT
    product_name, 
    list_price
FROM
    production.products
ORDER BY 
    list_price DESC;

-- Step 3: Menggunakan SELECT TOP WITH TIES untuk menyertakan baris dengan nilai yang sama seperti baris terakhir
SELECT TOP 3 WITH TIES
	product_name,
	list_price
FROM 
	production.products
ORDER BY 
	list_price DESC;