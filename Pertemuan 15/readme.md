# pertemuan 15

## Praktikum 1

1. Mendaftarlah ke layanan Lab Mock di https://app.wiremock.cloud/. Bisa anda gunakan
   akun google untuk mendaftar. Jika berhasil bendaftar dan login, akan muncul seperti
   gambar berikut.
   Mendaftarlah ke layanan Lab Mock di https://app.wiremock.cloud/. Bisa anda gunakan
   akun google untuk mendaftar. Jika berhasil bendaftar dan login, akan muncul seperti
   gambar berikut.
   ![alt text](image.png)
2. Di halaman dahsboard, klik menu Stubs, kemudian klik entri pertama yaitu “GET a JSON
   resource”. Anda akan melihat layar yang mirip dengan berikut.
   ![alt text](image-1.png)
3. Klik “Create new stub”. Di kolom sebelah kanan, lengkapi data berikut. Namanya adalah
   “Pizza List”, kemudian pilih GET dan isi dengan “/pizzalist”. Kemudian, pada bagian
   Response, untuk status 200, kemudian pada Body pilih JSON sebagai formatnya dan isi  
   konten JSON dari https://bit.ly/pizzalist. Perhatikan gambar berikut.
   ![alt text](image-2.png)
4. Tekan tombol SAVE di bagian bawah halaman untuk menyimpan Mock ini. Jika berhasil
   tersimpan, maka Mock API sudah siap digunakan.
5. Buatlah project flutter baru dengan nama pizza_api_nama_anda, tambahkan depedensi
   “http” melalui terminal.
   ![alt text](image-3.png)
   ![alt text](image-4.png)
6. DI folder “lib” project anda, tambahkan file dengan nama “httphelper.dart”.
   ![alt text](image-6.png)
7. . Isi httphelper.dart dengan kode berikut. Ubah “02z2g.mocklab.io” dengan URL Mock API
   anda.
   ![alt text](image-5.png)
8. Di file “main.dart”, di class \_ MyHomePageState, tambahkan metode bernama
   “callPizzas”. Metode ini mengembalikan sebuah Future dari daftar objek Pizza dengan
   memanggil metode getPizzaList dari kelas HttpHelper, dengan kode sebagai berikut:
   ![alt text](image-7.png)
9. Pada metode build di class \_MyHomePageState, di dalam body Scaffold, tambahkan
   FutureBuilder yang membuat ListView dari widget ListTile yang berisi objek Pizza:
   ![alt text](image-8.png)
10.
