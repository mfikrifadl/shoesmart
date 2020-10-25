Catatan :
Web ini menggunakan php v7.3.22
Menggunakan framework laravel
Menggunakan database PostgreSQL

Cara Menjalankan Web :
1. Buat Database PostgreSQL terlebih dahulu.
2. Buat Schema public, product, dan transaction dalam DB yang barusan dibuat.
3. Jalankan sql pada folder DB dengan urutan public.sql->product.sql->transaction.sql
4. Setelah semua data pada Database masuk, silahkan buka folder shoesmart
5. Buka File .env
6. Silahkan isi kolom berikut :
	DB_HOST="isi sesuai Host DB yang barusan dibuat jika local maka (127.0.0.1)"
	DB_PORT="5432"
	DB_DATABASE="isi sesuai nama database yang digunakan"
	DB_USERNAME="isi username database untuk login ke database"
	DB_password="isi password databse untuk login database"
7. setelah diedit dan di save file.envnya, silahkan untuk membuka terminal pada folder shoesmart
8. ketikkan perintah "php artisan serve"
9. setelah jalan silahkan buka "http://127.0.0.1:8000"
10. jika ingin ke halaman admin silahkan buka "http://127.0.0.1:8000/admin/login"
11. masukkan email="admin@admin.com" password="adminadmin"