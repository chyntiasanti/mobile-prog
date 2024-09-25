void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings' // Memperbaiki nilai untuk kunci 'fifth'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon', // Memperbaiki nilai untuk kunci 18
  };

  var mhs1 = <String, String>{}; // Membuat map kosong dengan tipe String
  var mhs2 = <int, String>{}; // Membuat map kosong dengan tipe int dan String

  // Menambahkan elemen ke mhs1
  mhs1['nama'] = 'Nama Anda';  // Ganti dengan nama Anda
  mhs1['nim'] = 'NIM Anda';    // Ganti dengan NIM Anda

  // Menambahkan elemen ke mhs2
  mhs2[1] = 'Mahasiswa 1'; // Contoh penambahan mahasiswa
  mhs2[2] = 'Mahasiswa 2'; // Contoh penambahan mahasiswa

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
