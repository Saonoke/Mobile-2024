# Pertemuan 13

## Praktikum 1

1. Buka file main.dart
   ![alt text](image.png)
2. Buat file baru stream.dart
   ![alt text](image-2.png)
3. Buat variabel colors
   ![alt text](image-3.png)
4. Tambahkan method getColors()
   ![alt text](image-5.png)
5. Tambah perintah yield\*
   ![alt text](image-6.png)
6. Buka main.dart
   ![alt text](image-7.png)
7. Tambah variabel
   ![alt text](image-9.png)
8. tambahkan method changeColor
   ![alt text](image-8.png)
9. Lakukan override
   ![alt text](image-10.png)
10. Ubah isi scaffold()
    ![alt text](image-11.png)

## Praktikum 2

1. Buka file Stream.dart
   ![alt text](image-12.png)
2. Tambah class NumberStream
   ![alt text](image-13.png)
3. Tambah StreamController
   ![alt text](image-15.png)
4. Tambah method addNumberToSink
   ![alt text](image-14.png)
5. Tambah method Close()
   ![alt text](image-16.png)
6. buka main.dart
   ![alt text](image-17.png)
7. Tambah variabel
   ![alt text](image-18.png)
8. Edit initState()
   ![alt text](image-19.png)
9. Edit dispose()
   ![alt text](image-20.png)
10. Tambah method addRandomNumber()
    ![alt text](image-21.png)
11. Edit method build
    ![alt text](image-22.png)
12. run
13. buka stream.dart
    ![alt text](image-23.png)
14. Buka main.dart
    ![alt text](image-24.png)
15. Edit method addRandomNumber()
    ![alt text](image-25.png)

## Praktikum 3

1. buka main.dart
   ![alt text](image-26.png)
2. Tambahkan kode ini di initstate
   ![alt text](image-27.png)
3. Tetap di initState
   ![alt text](image-28.png)
4. Run

## Praktikum 4

1. Tambah variabel
   ![alt text](image-29.png)
2. Edit initState()
   ![alt text](image-31.png)
3. tetap initState()
   ![alt text](image-30.png)
4. tambah properti onDone()
   ![alt text](image-32.png)
5. Tambah method baru
   ![alt text](image-33.png)
6. Pindah ke method dispose
   ![alt text](image-34.png)
7. Pindah ke method build
   ![alt text](image-35.png)
8. Edit method addRandomNumber
   ![alt text](image-36.png)
9. run
   ![alt text](image-37.png)

## Praktikum 5

1. buka file main.dart
   ![alt text](image-38.png)
2. Edit initState()
   ![alt text](image-39.png)
3. run
   ![alt text](image-40.png)
4. Set broadcast stream
   ![alt text](image-41.png)
5. Edit method build()
   ![alt text](image-42.png)
6. Run
   ![alt text](image-43.png)

## Praktikum 6

1. Buat project baru
   ![alt text](image-44.png)
2. Buat file baru stream.dart
   ![alt text](image-45.png)
3. Tetap di file stream.dart
   ![alt text](image-46.png)
4. Edit main.dart
   ![alt text](image-47.png)
5. Tambah variabel
   ![alt text](image-48.png)
6. Edit initState()
   ![alt text](image-49.png)
7. Edit method build()
   ![alt text](image-50.png)
8. Run
   ![alt text](image-51.png)

## Praktikum 7

1. Buat project baru
   ![alt text](image-52.png)
2. isi kode random_bloc.dart
   ![alt text](image-53.png)
3. Buat class RandomNumberBloc()
   ![alt text](image-56.png)
4. Buat variabelStreamController
   ![alt text](image-55.png)
5. Buat constructor
   ![alt text](image-54.png)
6. buat method dispose()
   ![alt text](image-57.png)
7. Edit main.dart
   ![alt text](image-58.png)
8. Buat file baru random_screen
   ![alt text](image-59.png)
9. Lakukan import material dan random_bloc.dart
   ![alt text](image-60.png)
10. Buat statefull widget randomscreen
    ![alt text](image-61.png)
11. Buat variabel
    ![alt text](image-62.png)
12. Buat method dispose()
    ![alt text](image-63.png)
13. Edit method build
    ![alt text](image-64.png)

## Soal 1

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
  ![alt text](image-1.png)

## Soal 2

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
  ![alt text](image-4.png)

## Soal 3

- Jelaskan fungsi keyword `yield*` pada kode tersebut!
  `yield*` digunakan untuk mengembalikan banyak data yang biasanya juga dari method stream
- Apa maksud isi perintah kode tersebut?
  Mengembalikan nilai dari sebuah fungsi stream periodic dengan periode waktu 1 second , dengan dan sebuah function yang mereturn list colors dengan index

## soal 4

![alt text](soal4.gif)

## soal 5

- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
  `listen` = digunakan untuk mendapatkan setiap data dari stream
  `await for` = digunakan untuk mengiterate untuk setiap objek dengan menunggu setiap proses

## soal 6

- Jelaskan maksud kode langkah 8 dan 10 tersebut!
  > langkah 8
  > init state digunakan untuk pendeklarasian dari class stream dan controller
  > langkah 10
  > Digunakan untuk menambahkan nomer secara dan menambahkan ke sink

![alt text](soal6.gif)

## soal 7

- jelaskan kode langkah 13 sampai 15 tersebut!
  > pada langkah 13 menambahkan function untuk menghandel error
  > pada langkah 14 menambahkan main menambahkan handling pada initstate
  > pada langkah 15 menjadikan error karena tidak ada data yang diinputkan, hanya menambahkan onError

## soal 8

- Jelaskan maksud kode langkah 1-3 tersebut!
  > pada langkah 1 mendeklarasikan variabel StreamTransformer
  > pada langkah 2 menambahkan handle data yaitu setiap data akan dikalikan 10 dari hasil random number
  > pada langkah 3 mengubah variabel lastnumber dengan event dari StreamTransformer

![alt text](soal8.gif)

## soal 9

- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
  > pada langkah 2 menambahkan subscription yang listen terhadap event dari stream lalu mengubah last number dengan event atau data dari stream
  > pada langkah 6 dispose digunakan ketika stream sudah tidak terpakai, maka subscription akan di cancel
  > pada langkah 8 terjadi pengecekan apabila controller masih dalam keadaan terbuka maka masih bisa menambahkan data ke stream, namun apabila sudah ditutup maka akan mengganti angka dengan -1

![alt text](soal9.gif)

## Soal 10

> Karena kedua subs mendengarkan pada streamController yang sama

## Soal 11

> Karena terjadi broadcasting, sehinga subscription menjadi bekerja 2 kali untuk subs 1 dan subs 2 sehingga terjadi dobel angka

![alt text](soal11.gif)

## Soal 12

- Jelaskan maksud kode pada langkah 3 dan 7
  > pada langkah 3 membuat stream dengan periodic setiap 1 second menghasilkan angka random 1-10
  > pada langkah 7 membuat view menggunakan stream builder

![alt text](soal12.gif)

## soal 13

> pada praktikum ini terjadi pemisahan pada business logic pada random bloc, letak konsep BLoC terjadi di situ, dimana pemisahan setiap logic berada pada random_bloc dan pada random_screen hanya fokus pada tampilan

![alt text](soal13.gif)
