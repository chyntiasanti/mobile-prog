// Fungsi untuk menukar dua nilai dalam tuple
(int, int) tukar((int, int) record) {
  var (a, b) = record; // Menggunakan destructuring untuk mendapatkan nilai a dan b
  return (b, a); // Mengembalikan tuple dengan nilai yang ditukar
}

void main() {
  // Membuat record yang merupakan tuple
  var record = (1, 2); // Misalnya tuple dengan dua integer
  print('Record sebelum ditukar: $record');

  // Menggunakan fungsi tukar untuk menukar nilai dalam record
  var swappedRecord = tukar(record);
  print('Record setelah ditukar: $swappedRecord');

  // Inisialisasi record mahasiswa
  (String, int) mahasiswa = ('Chyntia Santi Nur Trisnawati', 2241720017);
  print('Mahasiswa: $mahasiswa');
  // Tuple dengan named fields
  var mahasiswa2 = ('Chyntia Santi Nur Trisnawati', a: 2241720017, b: true, 'last');

  print(mahasiswa2.$1); // Mengakses elemen pertama ('Chyntia Santi Nur Trisnawati')
  print(mahasiswa2.a);  // Mengakses elemen named field 'a' (2241720017)
  print(mahasiswa2.b);  // Mengakses elemen named field 'b' (true)
  print(mahasiswa2.$2); // Mengakses elemen terakhir ('last')
}
