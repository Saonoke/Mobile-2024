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
