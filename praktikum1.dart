//var list = [0, 1, 2, 3, 4];
//assert(list.length == 3)
//assert(list[1] == 2)
//print(list.length);
//print(list[1]);

//list[1] = 1;
//assert(list[1] == 1);
//print(list[1]);

//KODE PEMROGRAMAN YANG BENAR

// void main() {
//   void main() {
//   // Mengubah list menjadi variabel final dengan panjang 5 dan nilai default null
//   final list = List.filled(5, null);
  
//   // Mengisi elemen index ke-1 dan ke-2 dengan nama dan NIM
//   list[1] = "Chyntia Santi Nur Trisnawati";  // Ganti dengan nama Anda
//   list[2] = "2241720017";   // Ganti dengan NIM Anda
  
//   assert(list.length == 5);
  
//   print(list.length);  // Output: 5
//   print(list[1]);      // Output: Nama Anda
//   print(list[2]);      // Output: NIM Anda
// }

// }

// KODE YANG BENAR
void main() {
  // Membuat list dengan panjang 5 dan nilai default null
  List<String?> list = List.filled(5, null);

  // Isi elemen indeks ke-0 dengan nama
  list[0] = "Chyntia Santi Nur Trisnawati";

  // Isi elemen indeks ke-1 dengan NIM
  list[1] = "2241720017";

  // Mencetak isi list
  print(list);
}