# Tugas Praktikum 
1. Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta! <br>
Output yang diminta: <br>
![alt text](img/soal.png) <br>
**Jawab** <br>
Kode Program : 
void main() {
    for (int i = 18; i >= 9; i--) {
        print('Nama saya adalah Chyntia Santi, Sekarang Berumur ${i}');
    }  
} <br>

Outputnya adalah sebagai berikut <br>
![alt text](img/hasil_praktikum.png)

2. Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan! <br>
**Jawab** <br>
Untuk memahami Dart dengan baik, sehingga penggunaan framework Flutter menjadi lebih mudah dan efisien, sangat penting untuk mempelajari dasar-dasar dan konsep kunci dalam bahasa Dart.

3. Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.<br>
**Jawab** <br>
<br>
**Dart operators** <br> 
Menggunakan operator seperti x == y, seolah-olah Anda sedang memanggil
x.==(y) metode untuk melakukan perbandingan kesetaraan.
x selalu berupa turunan dari kelas yang memiliki method. <br> 
<br> **Arithmetic operators**
- '+' untuk tambahan.
- '-' untuk pengurangan.
- '*' untuk perkalian.
- '/' untuk pembagian.
- '~/' untuk pembagian bilangan bulat. Di Dart, setiap pembagian sederhana dengan menghasilkan nilai double. 
- '%' untuk operasi modulus (sisa bagi dari bilangan bulat).
- '-expression' untuk negasi (yang membalikkan suatu nilai). <br>
<br>
**Increment and decrement operators** <br>
- ++var atau var++ untuk menambah nilai variabel var sebesar 1 
- --var atau var-- untuk mengurangi nilai variabel var sebesar 1 <br>
<br>
**Equality and relational operators**
- == untuk memeriksa apakah operan sama
- != untuk memeriksa apakah operan berbeda
- '>' memeriksa apakah operan kiri lebih besar dari operan kanan
- < memeriksa apakah operan kiri lebih kecil dari operan kanan
- '>=' memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan
- <= memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan <br>
<br>
**Logical operators** <br>
- !expression negasi atau kebalikan hasil ekspresi—yaitu, true menjadi false dan false menjadi true.
- || menerapkan operasi logika OR antara dua ekspresi.
- && menerapkan operasi logika AND antara dua ekspresi. <br>
<br>
**Penjelasan Kode Program** <br>
- void menunjukkan bahwa method tidak mengembalikan data apa pun ketika telah selesai eksekusi. void adalah keyword dalam bahasa Dart yang hanya dapat digunakan secara spesifik. 
- main adalah nama function utama yang dicari oleh Dart VM saat pertama kali mengeksekusi kode. Setiap aplikasi Dart harus memiliki function main sehingga Dart VM tahu di mana harus memulai eksekusi kode.
- Tanda kurung kosong ( ) adalah tempat function untuk mendefinisikan data yang akan diterima. Function main ini tidak menerima data apa pun, oleh karena itu tanda kurung ini kosong.
- Terakhir, kurung kurawal { } di akhir baris pertama menentukan di mana kode function main dimulai, dan kurung kurawal penutup setelah beberapa baris kemudian untuk menentukan di mana kode function main berakhir. 

4. Buatlah slide yang berisi penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel ! (Khusus soal ini kelompok berupa link google slide) <br>
**Jawab** <br>
**Penjelasan**
- Null safety adalah konsep dalam pemrograman yang bertujuan untuk mencegah kesalahan yang disebabkan oleh akses variabel yang tidak disengaja dan disetel ke null.
- Dalam dart, late digunakan untuk menginisialisasi variabel di lain waktu, tetapi manfaat sebenarnya terjadi ketika variabel tersebut digunakan. <br>
<br>
**Contoh Eksekusi Kode** <br>
**Null Safety** <br>
void main() { <br>
  int nonNullableInt = 5; // Variabel non-nullable, tidak bisa bernilai null <br>
  int? nullableInt; // Variabel nullable, bisa bernilai null<br>
  
  print(nonNullableInt); // Output: 5 <br>
  print(nullableInt); // Output: null <br>
} <br>
<br>
**Late Variables** <br>
void main() { <br>
  late int lateInt; <br>
  
  // lateInt belum diinisialisasi di sini <br>
  lateInt = 10; // Inisialisasi<br>
  print(lateInt); // Output: 10 <br>
} <br>
<br>

**Perbedaan**
- Null Safety berfokus pada pencegahan kesalahan yang disebabkan oleh null dengan memaksa pengembang untuk menentukan apakah suatu variabel bisa null atau tidak sejak awal.
- Late Variables memungkinkan variabel untuk diinisialisasi nanti, tetapi dengan jaminan bahwa mereka akan mendapatkan nilai sebelum digunakan. late tidak ada kaitannya dengan null, melainkan lebih kepada penundaan inisialisasi.