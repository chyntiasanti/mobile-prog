void main() {
  // Nama dan NIM
  const String name = 'Chyntia Santi Nur Trisnawati';
  const String nim = '2241720017';

  // Fungsi untuk memeriksa apakah suatu bilangan adalah bilangan prima
  bool isPrime(int number) {
    if (number <= 1) return false;
    if (number <= 3) return true;
    if (number % 2 == 0 || number % 3 == 0) return false;
    for (int i = 5; i * i <= number; i += 6) {
      if (number % i == 0 || number % (i + 2) == 0) return false;
    }
    return true;
  }

  // Menampilkan bilangan prima dari 0 hingga 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('Bilangan Prima: $i');
      print('Nama: $name');
      print('NIM: $nim');
    }
  }
}
