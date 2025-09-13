/* GUNAKAN CTRL+R untuk menampilkan dan menyembunyikan result 

SQL Server NULL
NULL menunjukkan ketiadaan nilai. Dalam logika SQL, jika NULL terlibat dalam perbandingan, hasilnya bukan TRUE atau FALSE, melainkan UNKNOWN (tiga nilai logika: TRUE, FALSE, UNKNOWN).


*/

USE BikeStores
GO

-- Step 1: Pernyataan berikut menemukan pelanggan yang tidak memiliki nomor telepon yang tercatat di  customers tabel:
SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
    phone = NULL
ORDER BY
    first_name,
    last_name;

-- Step 2: Untuk menguji apakah suatu nilai NULL atau tidak, Anda selalu menggunakan IS NULL operator.
SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
    phone IS NULL
ORDER BY
    first_name,
    last_name;

-- Step 3: Untuk memeriksa apakah suatu nilai tidak NULL, Anda dapat menggunakan IS NOT NULL operator.
SELECT
    customer_id,
    first_name,
    last_name,
    phone
FROM
    sales.customers
WHERE
    phone IS NOT NULL
ORDER BY
    first_name,
    last_name;
