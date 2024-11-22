# pertemuan 14

## Praktikum 1

1. Di editor favorit Anda, buat proyek Flutter baru dan beri nama store_data
   ![alt text](image.png)
2. Pada file main.dart, hapus kode yang ada dan tambahkan kode awal untuk aplikasi dengan kode
   berikut:
   ![alt text](image-1.png)
3. Tambahkan folder baru ke root proyek anda dengan nama assets
   ![alt text](image-2.png)
4. Di dalam folder aset, buat file baru bernama pizzalist.json dan salin konten yang tersedia di tautan
   https://gist.github.com/simoales/a33c1c2abe78b48a75ccfd5fa0de0620. File ini berisi daftar objek
   JSON.
   ![alt text](image-3.png)
5. Di file pubspec.yaml, tambahkan referensi ke folder aset baru, seperti yang ditunjukkan di sini:
   ![alt text](image-4.png)
6. Pada kelas \_MyHomePageState, di main.dart, tambahkan sebuah variabel state bernama
   pizzaString:
   ![alt text](image-5.png)
7. Untuk membaca isi file pizzalist.json, di bagian bawah kelas \_MyHomePageState di main.dart,
   tambahkan metode asinkron baru yang disebut readJsonFile, yang akan mengatur nilai pizzaString,
   seperti yang ditunjukkan di sini:
   ![alt text](image-7.png)
8. Pada kelas \_MyHomePageState, timpa metode initState dan, di dalamnya, panggil metode
   readJsonFile:  
   ![alt text](image-8.png)
9. Sekarang, kita ingin menampilkan JSON yang diambil di properti dalam Scaffold. Untuk
   melakukannya, tambahkan widget Teks sebagai child dari Container kita:
   ![alt text](image-9.png)
10. Mari kita jalankan aplikasinya. Jika semuanya berjalan seperti yang diharapkan, Anda akan
    melihat konten file JSON di layar
    ![alt text](image-10.png)
11. Kita ingin mengubah String ini menjadi sebuah List of Objects. Kita akan mulai dengan membuat
    kelas baru. Dalam folder lib aplikasi kita, buat file baru bernama pizza.dart.
12. Di dalam file tersebut, tentukan properti kelas Pizza:
    ![alt text](image-11.png)
13. Di dalam kelas Pizza, tentukan konstruktor bernama fromJson, yang akan mengambil sebuah Map
    sebagai parameter dan mengubah Map menjadi sebuah instance dari Pizza:
    ![alt text](image-12.png)
14. Refaktor metode readJsonFile() pada kelas \_MyHomePageState. Langkah pertama adalah
    mengubah String menjadi Map dengan memanggil metode jsonDecode. Pada method readJsonFile,
    tambahkan kode yang di cetak tebal berikut ini:
    ![alt text](image-13.png)
15. Pastikan editor Anda secara otomatis menambahkan pernyataan impor untuk pustaka
    "dart:convert" di bagian atas file main.dart; jika tidak, tambahkan saja secara manual. Tambahkan
    juga pernyataan impor untuk kelas pizza:
    ![alt text](image-14.png)

    > Saya jadikan di satu file di main

16. Langkah terakhir adalah mengonversi string JSON kita menjadi List of native Dart objects. Kita
    dapat melakukan ini dengan mengulang pizzaMapList dan mengubahnya menjadi objek Pizza. Di
    dalam metode readJsonFile, di bawah metode jsonDecode, tambahkan kode berikut:
    ![alt text](image-15.png)
17. Hapus atau beri komentar pada metode setState yang mengatur String pizzaString dan
    kembalikan daftar objek Pizza sebagai gantinya:
    ![alt text](image-16.png)
18. Ubah signature metode sehingga Anda dapat menampilkan nilai balik secara eksplisit:
    ![alt text](image-17.png)
19. Sekarang kita memiliki objek List of Pizza. Daripada hanya menampilkan sebuah Teks kepada
    pengguna, kita dapat menampilkan sebuah ListView yang berisi sekumpulan widget ListTile. Di
    bagian atas kelas \_MyHomePageState, buat `List<Pizza>` bernama myPizzas:
    ![alt text](image-18.png)
20. Dalam metode initState, pastikan Anda mengatur myPizzas dengan hasil panggilan ke
    readJsonFile:
    ![alt text](image-19.png)
21. Tambahkan kode berikut ini di dalam Scaffold, di dalam metode build():
    ![alt text](image-20.png)
22. Jalankan aplikasi. Antarmuka pengguna sekarang seharusnya jauh lebih ramah dan terlihat
    seperti yang ditunjukkan pada
    ![alt text](image-21.png)

## Praktikum 2

1.  Tambahkan metode baru ke kelas Pizza, di file pizza.dart, yang disebut toJson. Ini akan
    mengembalikan sebuah `Map<String, dynamic>` dari objek:
    ![alt text](image-22.png)
2.  Setelah Anda memiliki sebuah Map, Anda dapat menserialisasikannya kembali ke dalam string
    JSON. Tambahkan metode baru di di bagian bawah kelas \_MyHomePageState, di dalam file
    main.dart, yang disebut convertToJSON:
    ![alt text](image-23.png)
3.  Metode ini mengubah objek List of Pizza kembali menjadi string Json dengan memanggil metode
    jsonEncode lagi di pustaka dart_convert.
4.  Terakhir, mari panggil metode tersebut dan cetak string JSON di Debug Console. Tambahkan kode
    berikut ke metode readJsonFile, tepat sebelum mengembalikan List myPizzas:
    ![alt text](image-24.png)
5.  Jalankan aplikasi. Anda akan melihat string JSON dicetak, seperti yang ditunjukkan pada gambar
    berikut:
    ![alt text](image-25.png)

## Praktikum 3

1. Gunakan project pada pertemuan 11 bernama books. Pertama, tambahkan ketergantungan pada
   shared_preferences. Dari Terminal Anda, ketikkan perintah berikut
   ![alt text](image-26.png)
2. Untuk memperbarui dependensi dalam proyek Anda, jalankan perintah flutter pub get dari jendela
   Terminal.
   ![alt text](image-27.png)
3. Di bagian atas file main.dart, impor shared_preferences:
   ![alt text](image-28.png)
4. Di bagian atas kelas \_MyHomePageState, buat variabel status integer baru bernama appCounter:
   ![alt text](image-29.png)
5. Dalam kelas \_MyHomePageState, buat metode asinkron baru yang disebut
   readAndWritePreferences():
   ![alt text](image-30.png)
6. Di dalam metode readAndWritePreference, buatlah sebuah instance dari SharedPreferences:
   ![alt text](image-31.png)
7. Setelah membuat instance preferensi, kita membuat kode yang mencoba baca nilai kunci
   appCounter. Jika nilainya nol, setel ke 0; lalu naikkan nilainya:
   ![alt text](image-32.png)
8. Setelah itu, atur nilai kunci appCounter di preferensi ke nilai baru:
   ![alt text](image-33.png)
9. Memperbarui nilai status appCounter
   ![alt text](image-34.png)
10. Pada metode initState di kelas \_MyHomePageState, panggil metode readAndWritePreference()
    dengan kode yang dicetak tebal:
    ![alt text](image-35.png)
11. Dalam metode build, tambahkan kode berikut ini di dalam widget Container:
    ![alt text](image-36.png)
12. Jalankan aplikasi. Saat pertama kali membukanya, Anda akan melihat layar yang mirip dengan
    yang berikut ini:
    ![alt text](image-37.png)
13. Tambahkan metode baru ke kelas \_MyHomePageState yang disebut deletePreference(), yang
    akan menghapus nilai yang disimpan:
    ![alt text](image-38.png)
14. Dari properti onPressed dari widget ElevatedButton di metode build(), memanggil metode
    deletePreference(), dengan kode di cetak tebal:
    ![alt text](image-39.png)
15. jalankan aplikasi lagi

## Praktikum 4

1. Buat project baru
   ![alt text](image-41.png)
2. menambahkan dependency yang relevan ke file pubspec.yaml. Tambahkan path_provider dengan
   mengetikkan perintah ini dari Terminal Anda:
   ![alt text](image-42.png)
3. Di bagian atas file main.dart, tambahkan impor path_provider:
   ![alt text](image-43.png)
4. Di bagian atas kelas \_MyHomePageState, tambahkan variabel State yang akan kita gunakan untuk
   memperbarui antarmuka pengguna:
   ![alt text](image-44.png)
5. Masih dalam kelas \_MyHomePageState, tambahkan metode untuk mengambil direktori temporary
   dan dokumen:
   ![alt text](image-45.png)
6. Pada metode initState dari kelas \_MyHomePageState, panggil metode getPaths:
   ![alt text](image-46.png)
7. Pada metode build \_MyHomePageState, buat UI dengan dua widget Teks yang menunjukkan path
   yang diambil:
   ![alt text](image-47.png)
8. Jalankan aplikasi
   ![alt text](image-48.png)

## Praktikum 5

1. Di bagian atas berkas main.dart, impor pustaka dart:io:
   ![alt text](image-49.png)
2. Di bagian atas kelas \_MyHomePageState, di file main.dart, buat dua variabel State baru untuk file
   dan isinya:
   ![alt text](image-51.png)
3. Masih dalam kelas MyHomePageState, buat metode baru bernama writeFile dan gunakan kelas
   File dari pustaka dart:io untuk membuat file baru:
   ![alt text](image-50.png)
4. Dalam metode initState, setelah memanggil metode getPaths, dalam metode then, buat sebuah
   file dan panggil metode writeFile:
   ![alt text](image-52.png)
5. Buat metode untuk membaca file:
   ![alt text](image-53.png)
6. Dalam metode build, di widget Column, perbarui antarmuka pengguna dengan ElevatedButton.
   Ketika pengguna menekan tombol, tombol akan mencoba membaca konten file dan
   menampilkannya di layar, cek kode cetak tebal:
   ![alt text](image-54.png)
7. Jalankan aplikasi dan tekan tombol Baca File. Di bawah tombol tersebut, Anda akan melihat teks
   Margherita, Capricciosa, Napoli, seperti yang ditunjukkan pada tangkapan layar berikut:

## Praktikum 6

1. Install dependency
   ![alt text](image-57.png)
2. Di file main.dart, salin kode berikut:
   ![alt text](image-58.png)
3. Di bagian atas file main.dart, tambahkan impor yang diperlukan:
   ![alt text](image-59.png)
4. Di bagian atas kelas \_myHomePageState, buat penyimpanan yang aman:
   ![alt text](image-60.png)
5. Di kelas \_myHomePageState, tambahkan metode untuk menulis data ke penyimpanan aman:
   ![alt text](image-61.png)
6. Pada metode build() dari kelas \_myHomePageState, tambahkan kode yang akan menulis ke
   penyimpanan ketika pengguna menekan tombol Save Value, cek kode cetak tebal:
   ![alt text](image-62.png)
7. Di kelas \_myHomePageState, tambahkan metode untuk membaca data dari penyimpanan aman:
   ![alt text](image-63.png)
8. Pada metode build() dari kelas \_myHomePageState, tambahkan kode untuk membaca dari
   penyimpanan ketika pengguna menekan tombol Read Value dan memperbarui variabel myPass
   State:
   ![alt text](image-64.png)
9. Jalankan aplikasi dan tulis beberapa teks pilihan Anda di bidang teks. Kemudian, tekan tombol
   Save Value. Setelah itu, tekan tombol Read Value. Anda akan melihat teks yang Anda ketik di kolom
   teks, seperti yang ditunjukkan pada tangkapan layar berikut:
