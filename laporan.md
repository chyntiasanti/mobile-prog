# Pertemuan 3

### Praktikum 1: Menerapkan Control Flows ("if/else")

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi main()<br>
void main() {<br>
String test = "test2";<br>

if (test == "test1") { <br>
print("Test1"); <br>
} else if (test == "test2") { // menggunakan else if (huruf kecil)<br>
print("Test2");<br>
} else { <br>
print("Something else");<br>
}<br>
if (test == "test2") print("Test2 again"); // statement satu baris tanpa tanda kurung kurawal <br>
} <br>

### Langkah 2: <br>

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!<br>
Hasil ketika dijalankan adalah sebagai berikut
![alt text](images/image.png) <br>
Yang terjadi adalah ketika dijalankan outputnya ada dua yang pertama karena yang dipanggil adalah "test2" maka outputnya adalah "Test2" kemudian setelah di jalankan jika "test2" maka print di print lagi "Test2 again" sehingga terdapat dua output ketika dijalankan.

### Langkah 3:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
![alt text](images/Screenshot1.png) <br>
Terjadi eror karena Error ariabel test dideklarasikan dua kali, yang tidak diizinkan Dart, dan kondisi if (test) mencoba menggunakan string sebagai boolean, yang menyebabkan kesalahan. Solusinya, gunakan nama variabel unik dan pastikan kondisi if membandingkan string, seperti if.
Berikut adalah kode program yang sudah dibenarkan<br>
(test == "true"). <br>
void main() { <br>
String test = "test2"; <br>
<br>
if (test == "test1") { <br>
print("Test1"); <br>
} else if (test == "test2") { <br>
print("Test2"); <br>
} else { <br>
print("Something else"); <br>
} <br>
<br>
if (test == "test2") print("Test2 again"); <br>
<br>
// Ganti nama variabel dan perbaiki kondisi if <br>
String test2 = "true"; <br>
if (test2 == "true") { // Kondisi yang benar untuk mengecek string "true" <br>
print("Kebenaran");<br>
} <br>
} <br>
Berikut adalah hasil ketika dijalankan <br>
![alt text](images/Screenshot2.png) <br>

### Praktikum 2: Menerapkan Perulangan "while" dan "do-while

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda.

### Langkah 1:

Ketik atau salin kode program berikut ke dalam fungsi main(). <br>
void main() { <br>
while (counter < 33) { <br>
print(counter); <br>
counter++; <br>
} <br>
} <br>

### Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error. <br>
Terjadi eror seperti berikut
![alt text](images/Screenshot3.png) <br>
Eror tersebut terjadi karena variabel counter belum dideklarasikan. Berikut adalah kode program yang sudah dibenarkan <br>
void main() {<br>
int counter = 0; // Deklarasikan counter<br>
while (counter < 33) { <br>
print(counter); <br>
counter++; <br>
} <br>
} <br>
![alt text](images/Screenshot4.png)

### Langkah 3:

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda. <br>
do { <br>
print(counter); <br>
counter++; <br>
} while (counter < 77); <br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.<br>
Hasil ketika dijalankan tidak error namun menjadikan output tidak sesuai sehingga berikut adalah kode program yang sudah benar <br>
void main() { <br>
int counter = 0; // Deklarasikan counter <br>
<br>
// Loop pertama dengan do-while <br>
do { <br>
print(counter); <br>
counter++; <br>
} while (counter < 77);<br>
<br>
// Loop kedua dengan while (tidak akan dieksekusi karena counter >= 33) <br>
while (counter < 33) {<br>
print(counter);<br>
counter++;<br>
}<br>
}<br>
Hasil ketika dijalankan adalah sebagai berikut
![alt text](images/Screenshot5.png) <br>

### Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

Selesaikan langkah-langkah praktikum berikut ini menggunakan DartPad di browser Anda. <br>

### Langkah 1: <br>

Ketik atau salin kode program berikut ke dalam fungsi main(). <br>
for (Index = 10; index < 27; index) { <br>
print(Index); <br>
}<br>

### Langkah 2:

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error. <br>
Hasil ketika dijalankan adalah eror sebagai berikut <br>
![alt text](images/Screenshot6.png) <br>
Alasannya yaitu Kode mengalami error karena variabel index tidak dideklarasikan terlebih dahulu, sehingga program tidak mengetahui tipe data dari index. Berikut adalah kode yang sudah diperbaiki <br>
void main() { <br>
for (int index = 10; index < 27; index++) { <br>
print(index); <br>
} <br>
} <br>
Hasil ketika dijalankan adalah sebagai berikut <br>
![alt text](images/Screenshot7.png)

### Langkah 3:

Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda. <br>
If (Index == 21) break; <br>
Else If (index > 1 || index < 7) continue; <br>
print(index); <br>
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue. <br>
Hasil ketika dijalankan adalah eror, sehingga kode program perbaikannya adalah sebagai berikut : <br>
void main() {<br>
for (int index = 10; index < 27; index++) {<br>
if (index == 21) break; // Hentikan loop jika index sama dengan 21<br>
if (index > 1 && index < 7) continue; // Lewati cetak jika index antara 2 dan 6<br>
print(index); // Cetak index jika tidak memenuhi kondisi di atas<br>
}<br>
}<br>
Hasil ketika dijalankan adalah sebagai berikut : <br>
![alt text](images/Screenshot8.png) <br>

### Tugas Praktikum

1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya! <br>
2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda. <br>
   ![alt text](images/Screenshot9.png) <br>
   hasil ketika dijalankan adalah sebagai berikut <br>
   ![alt text](images/Screenshot10.png) <br>
3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
