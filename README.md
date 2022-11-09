# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

-------------------------------
## 1. Jelaskan apa yang dimaksud dengan stateless widget stateful widget dan jelaskan perbedaan dari keduanya!
-------------------------------
Jawaban:

- Stateless Widget = widget yang tidak memiliki perubahan data (tidak terjadi state).

- Stateful Widget = widget yang memiliki perubahan data (terjadi state).

Perbedaan antara keduanya adalah jika stateless widget di dalamnya tidak tejadi perubahan data, sedangkan pada stateful widget di dalamnya terjadi perubahan data.


-------------------------------
## 2.  Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!
-------------------------------
Jawaban:

- MaterialApp : Menerapkan material design.
- ThemeData : Mmebagikan tema ke seluruh bagian aplikasi.
- AppBar : Menjadi judul dari sebuah app atau page 
- Center : Meletakkan seluruh widget yang ada di dalam widget ini ke bagian tengah halaman
- Column : Menempatkan seluruh childrennya secara vertikal.
- Text : Menampilkan dan memberikan style pada teks.
- Stack : Menampilkan beberapa lapis widget di dalam satu layar karena memiliki properti children yang dapat menampung lebih dari satu widget.
- Align : Menyelaraskan child di dalam dirinya sendiri atau mengikuti ukuran child.
- Padding : Menambahkan ruang kosong antara widget yang satu dengan widget yang lainnya.
- FloatingActionButton : digunakan untuk menjalankan positive actions seperti create, share, atau navigate. 

-------------------------------
Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!

-------------------------------
Jawaban:

setState berfungsi untuk mengubah state dari widget. Variabel yang terdampak adalah variabel yang berada di dalam state karena variabel yang berada di dalam state akan berubah jika fungsi dari setState dipanggil, sedangkan variabel yang berada di luar state tidak akan berubah jika fungsi dari setState dipanggil.

-------------------------------
## 3.  Jelaskan perbedaan antara const dengan final!

-------------------------------
Jawaban:

Perbedaan antara keduanya terletak pada inisialisasinya di mana untuk const, variabel harus diinisialisasi terlebih dahulu saat kompilai dan nilainya bersifat konstan serta eksplisit sehingga variabel const sudah memiliki nilai saat kompilasi, sedangkan untuk variabel final, tidak harus diinisialisasi terlebih dahulu.

-------------------------------
## 4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

-------------------------------
Jawaban:

Saya membuat stateless widget untuk membuat widget yang tetap (tidak berubah ketika state ditrigger) dengan isi widgetnya adalah tema aplikasi, kemudian untuk statefulWidget saya membuat widget yang berisi widget-widget yang nantinya berubah ketika state ditrigger. Saya membuat variabel _counter untuk menyimpan nilai yang ingin ditampilkan pada aplikasi counter. Pada statefulWidget saya membuat method increment dan decrement untuk menjumlahkan dan mengurangi counter jika nilai > 0. Setelah itu, pada widget build, saya membuat Widget build untuk menampilkan suatu teks jika counter mod 2 == 0 akan menampilkan teks genap, dan sebaliknya jika counter mod 2 == 1 akan menampilkan teks ganjil. Untuk decrementCounter, jika counter tidak > 0, maka tombol decrement akan diremove.

