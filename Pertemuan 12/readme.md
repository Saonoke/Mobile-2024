# Pertemuan 12

## Praktikum 1

1. Buat project baru
   ![alt text](image.png)
   ![alt text](image-1.png)
2. Cek di pusbspec.yaml
   ![alt text](image-2.png)
3. buka file main.dart
   ![alt text](image-3.png)
4. Tambah method getData()
   ![alt text](image-4.png)
   ![alt text](image-5.png)
   ![alt text](image-6.png)
   ![alt text](image-7.png)

## Soal 2

![alt text](image-17.png)

## Soal 3

> substring : digunakan untuk mengambil string dengan indeks dari 0 sampai 450
> Catcherror : digunakan untuk error handling ketika terjadi kesalahan saat load data
> ![alt text](untitled.gif)

## Praktikum 2

1. Buka file main.dart
   ![alt text](image-8.png)
2. Tambah method count()
   ![alt text](image-10.png)
3. Panggil count()
   ![alt text](image-9.png)
4. Run
   ![alt text](image-11.png)

## Soal 4

> kode dari langkah 1 dan adalah contoh pembuatan function async dengan memberikan delay 3 detik dan mereturn nilai int
> lalau pada kode langkah 2 membuat fungsi async yang menunggu dari fungsi async sebelumnya lalu menjumlahkannya dan mengatur state

![alt text](soal4.gif)

## Praktikum 3

1. buka main.dart
   ![alt text](image-12.png)
2. tambahkan variabel dan method
   ![alt text](image-13.png)
3. Ganti isi kode onPressed()
   ![alt text](image-14.png)
4. Run
   ![alt text](image-15.png)
5. Ganti method calculate()
   ![alt text](image-16.png)
6. pindah ke onPressed()

## Soal 5

> Pada langkah 2 membuat sebuah variabel dengan tipe data Completer dan membuat fungsi future getNumber yang menjalankan fungsi future calculate
> dengan delayed 5 detik dan mereturn nilai complete 42. Dengan menggunakan completer maka bisa mereturn nilai value jika berhasil atau error jika gagal

![alt text](soal5.gif)

## Soal 6

> perbedaannya terletak pada handling error, jika variabel dengan tipe data Completer dapat mereturn error maka kita harus menambahkan handling error juga
> agar program memberi flow apabila terjadi error

![alt text](soal6.gif)

## Praktikum 4

1. Buka file main.dart
   ![alt text](image-18.png)
2. Edit onPresssed()
   ![alt text](image-19.png)
3. run
   ![alt text](image-20.png)
4. Ganti variabel futureGroup
   ![alt text](image-21.png)

## Soal 7

![alt text](soal7.gif)

## Soal 8

> Perbedaan langkah 1 dan 4 adalah dalam menghandling beberapa future, pada langkah 1 perlu menggunakan futuregroup dengan tipe datra int
> dan menambahkannya seperti pada list, dan pada langkah 4 langsung seperti pendeklarasian list dengan isian dari beberapa fungsi async

## Praktikum 5

1. Buka main.dart
   ![alt text](image-22.png)
2. Elevated button
   ![alt text](image-23.png)
3. Run
   ![alt text](image-25.png)
4. Tambah method handleError()
   ![alt text](image-26.png)

## Soal 9

![alt text](soal9.gif)

## Soal 10

> Perbedaan pada try catch yang di bungkus dalam sebuah fungsi atau chaining dari async

![alt text](image-27.png)

## Praktikum 6

1. Install plugin geolocator
   ![alt text](image-28.png)
2. Tambah permisson GPS
   ![alt text](image-29.png)
3. Buat file geolocation.dart
   ![alt text](image-30.png)
4. Edit main.dart
   ![alt text](image-32.png)
5. Tambahkan animasi loading

## Soal 11

![alt text](image-31.png)

## Soal 12

- percobaan pada browser
  ![alt text](image-33.png)
  > pada browser masih bisa mennjalankan selama perizinan lokasi di izinkan

![alt text](soal12.gif)

## Praktikum 7

1. Modifikasi method getPosition()
   ![alt text](image-35.png)
2. Tambah variabel
   ![alt text](image-34.png)
3. Tambah initState
   ![alt text](image-36.png)
4. Edit method build()
   ![alt text](image-37.png)
5. Tambah handling error
   ![alt text](image-38.png)

## Soal 13

- Tidak ada perbedaan dengan UI sebelumnya, hanya saja handling pada data masih di proses dan sudah memiliki perbedaan dan juga terdapat handling bila error
  ![alt text](soal13.gif)

## Soal 14

- Tidak ada perbedaan dengan UI sebelumnya,namun jika terjadi error saat process data maka akan menghasilkan text berbeda
  ![alt text](soal13.gif)

## Praktikum 8

1. Buat file baru navigation_first.dart
   ![alt text](image-39.png)
2. Isi kode navigation_first.dart
   ![alt text](image-41.png)
3. Tambahkan method di class \_navigationFirstState
   ![alt text](image-40.png)
4. Buat file baru navigation_second.dart
   ![alt text](image-43.png)
5. Buat class NavigationSecond dengan statefullwidget
   ![alt text](image-42.png)
6. Edit main.dart
   ![alt text](image-45.png)
7. run
   ![alt text](image-44.png)

## Soal 15

![alt text](image-46.png)

## soal 16

- Sudah sesuai dengan warna favorit saya
  ![alt text](soal15.gif)

## Praktikum 9

1.  Buat file baru navigation_dialog.dart
2.  Isi kode navigation_dialog.dart
    ![alt text](image-47.png)
3.  Tambah method async
    ![alt text](image-48.png)
4.  panggil method di elevated button
    ![alt text](image-49.png)
5.  Edit main.dart
    ![alt text](image-50.png)

## Soal 17

> terjadi karena ketika kita memilih salah satu warna, maka program akan menjalankan navigator.pop dengan warna yang berbeda
> ![alt text](soal17.gif)
