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

---------------------------------

# Tugas 8 README.md

---------------------------------
##  Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement!

---------------------------------
Jawaban:

Navigator.push = Metode push digunakan untuk menambahkan rute lain ke atas tumpukan screen (stack) saat ini. Halaman baru ditampilkan di atas halaman sebelumnya.

Navigator.replacement = Metode yang digunakan untuk menggantikan halaman sebelumnya dengan halaman yang diinisiasikan pada method ini.

-----------------------------------
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

-----------------------------------
Jawaban:

- MaterialApp : Menerapkan material design.
- ThemeData : Membagikan tema ke seluruh bagian aplikasi.
- AppBar : Menjadi judul dari sebuah app atau page. 
- Drawer : Menampilkan menu yang tersembunyi pada sisi kiri atau kanan sebuah halaman.
- Listview : Mempresentassikan data yang banyak secara bersamaan.
- Text : Menampilkan dan memberikan style pada teks.
- Padding : Menambahkan ruang kosong antara widget yang satu dengan widget yang lainnya.
- Column : Menempatkan seluruh childrennya secara vertikal.
- Form : Menyediakan wadah untuk widget-widget pengisi form
- Container : Widget yang hanya memiliki satu buah child. Namun, dapat menampung row, column, dan text atau bahkan container lainnya.


------------------------------------
## Sebutkan jenis-jenis event yang ada pada Flutter!

------------------------------------
Jawaban:

- onTap
- onChanged
- onSaved

------------------------------------
## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter!

-------------------------------------
Jawaban:

Navigator di dalam flutter memiliki cara kerja seperti stack karena menerapkan LIFO (last-in, first-out) yang mana ketika widget ini ditrigger, maka akan menumpuk halaman yang dipanggil di atas halaman saat ini, kemudian jika dipop, maka akan mengambil halaman yang terakhir dipanggil. 

--------------------------------------
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

--------------------------------------
Jawaban:

Pertama-tama, saya membuat drawer yang berguna agar user dapat memillih halaman mana yang ingin digunakan. Setelah itu, saya membuat form di dalam form.dart yang mengambil input dari user agar data dapat diolah, kemudian data yang telah diolah, akan ditampilkan pada halaman data yang merefer ke file data.dart. Tentunya di dalam membuat form, diperlukan inisiasi agar value dapat tersimpan pada variabel, seperti pada form.dart di bawah ini:

final _formKey = GlobalKey<FormState>();
String _judul = "";
int _nominal = 0;
String kategori = 'Pemasukan';
List<String> listKategori = ['Pemasukan', 'Pengeluaran'];
DateTime _date = DateTime.now();

Lalu, data yang tersimpan pada vaiabel harus di simpan di dalam list agar data yang telah diinput dapat direcord untuk ditampilkan di dalam data.dart

----------------------------------
# Tugas 9

----------------------------------

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

-----------------------------------
Jawaban:

Sebenarnya, hal tersebut mungkin saja dapat dilakukan. Akan tetapi, kita tidak dapat mengakses data tersebut seperti halnya sebuah class yang menyebabkan pemrograman menjadi kurang efisien.

------------------------------------
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!

-------------------------------------
Jawaban:

- MaterialApp : Menerapkan material design.
- ThemeData : Membagikan tema ke seluruh bagian aplikasi.
- AppBar : Menjadi judul dari sebuah app atau page. 
- Drawer : Menampilkan menu yang tersembunyi pada sisi kiri atau kanan sebuah halaman.
- Listview : Mempresentassikan data yang banyak secara bersamaan.
- Text : Menampilkan dan memberikan style pada teks.
- Padding : Menambahkan ruang kosong antara widget yang satu dengan widget yang lainnya.
- Column : Menempatkan seluruh childrennya secara vertikal.
- Container : Widget yang hanya memiliki satu buah child. Namun, dapat menampung row, column, dan text atau bahkan container lainnya.
- Flexible : agar text tidak overflow

-----------------------------------------
## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter!

-----------------------------------------
Jawaban:

Pertama-tama, saya menjalankan perintah 'flutter pub add http' di dalam terminal, kemudian saya melakukan pembuatan HTTP Request untuk GET yang mana GET ini nantinya akan diubah sama seperti model pada tugas 3 sebelumnya. Terakhir, saya membuat method FutureBuilder untuk membuat widget yang menggunakan data yang diambil pada GET sebelumnya.

--------------------------
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas!

--------------------------
Jawaban:

Pertama-tama, saya menjalankan perintah 'flutter pub add http' di dalam terminal, kemudian saya membuat model watchlist dan page watchlist. Setelah itu, saya menambahkann watchlist tadi ke dalam drawer agar dapat diakses halamannya, kemudian saya membuat file untuk fetchData dari url JSON pada tugas 3, lalu saya melakukan fetch dengan method futureBuiler di dalam file mywatchlist.dart. Data yang telah diambil pada JSON akan diloop dengan item builder dan akan membentuk komponen seperti kumpulan card. Terakhir, saya membuat navigator push yang nantinya akan menampilkan detail dari film yang diambil datanya pada GET ketika komponen seperti card diklik. 


