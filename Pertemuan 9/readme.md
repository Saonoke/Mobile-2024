# Praktikum 1

## Soal 1
1. Buat project baru
   ![alt text](image.png)

2. Membuat model task.dart
   ![alt text](image-1.png)

3. Membuat model plan.dart
   ![alt text](image-2.png)

4. Buat file data_layer.dart
   ![alt text](image-3.png)

5. Pindah ke file main.dart
![alt text](image-4.png)

6. Buat plan_screen.dart
![alt text](image-5.png)

7. buat method _buildAddTaskButton()
![alt text](image-6.png)

8. buat widget _buildList()
![alt text](image-7.png)

9. buat widget _buildTaskTile
![alt text](image-8.png)

10. Tambah Scroll Controller
![alt text](image-9.png)

11. Tambah Scroll Listener
![alt text](image-11.png)

12. Tambah controller dan keyboard behavior
![alt text](image-10.png)

12. tambah metode dispose()
![alt text](image-12.png)

## Soal 2
Untuk melakukan eksport pada models, sehingga proses import hanya dilakukan sekali pada views

## Soal 3
Agar objek tidak dapat diubah lagi setelah pendeklarasian objek, sehingga pada tahap2 selanjutnya proses menjadi duplikasi objek baru.

## Soal 4
![alt text](image-13.png)
membentuk sebuah listile yang didasarkan pada jumlah task pada plan, pada set state checkbox apa bila terjadi perubahan checkbox maka variabel pada task boolean menjadi true atau false. semua perubahan akan terjadi pada variabel plan, sehinga terjadi perubahan secara terus menerus pada variabel plan

## soal 5
ScrollListener digunakan apabila, tampilan melebihi batasan device maka akan dilakukan listener pada scroll seperti fokus.

# Praktikum 2   
## soal 1
1. Buat file plan_provider.dart
![alt text](image-14.png)

2. Edit main.dart
![alt text](image-15.png)

3.  Tambahkan method pada model plan.dart
![alt text](image-16.png)

4. pindah ke plan screen

5. Edit method _buildAddTaskButton
![alt text](image-17.png)

6. Edit method _buildTaskTile
![alt text](image-18.png)

7. Edit _buildList
![alt text](image-19.png)

8. Tetap di class PlanScreen
![alt text](image-20.png)

## soal 2
- Inhertied Widget : 
![alt text](image-21.png)
Digunakan untuk menyediakan data, sehingga data bisa di akses ke widget child.
- Inherited Notifier!
![alt text](image-22.png)
Digunakan untuk me- listen sebuah objek yang ketika objek itu berubah maka, akan melakukan rebuild widget sehingga data sesuai.

# Praktikum 3
1. Edit PlantProvider
![alt text](image-23.png)
2. Edit main.dart
![alt text](image-24.png)
3. Edit plan_screen.dart
![alt text](image-25.png)
4. Error
5. Tambah getter_plan
![alt text](image-26.png)
6. Method initState()
![alt text](image-27.png)
7. Widget Build
![alt text](image-28.png)
8. Edit _buildTaskTile
![alt text](image-29.png)
9. Buat screen menu baru
![alt text](image-31.png)
10. Pindah ke class _PlanCreatorScreenState
![alt text](image-30.png)
11. Pindah ke method build
![alt text](image-32.png)
12. Buat widget _buildListCreator
![alt text](image-33.png)
13. Buat void addPlan()
![alt text](image-34.png)
14. Buat widget _buildMasterPlans
![alt text](image-35.png)

