void main() {
  var list = [1, 2, 3]; // Daftar awal
  var nim = ['2241720017'];
  var list2 = [0, ...list]; // Spread operator untuk menambahkan list ke dalam list2
  
  print('List awal: $list');    
  print('List 2: $list2');   
  print('Panjang list2: ${list2.length}'); // Mencetak panjang list2

  var list1 = [1, 2, null]; // List yang mengandung null
  print('List 1: $list1');
  
  var list3 = [0, ...?list1, ...nim]; // Menambahkan NIM menggunakan spread operator
  print('List 3: $list3'); // Mencetak list3
  print('Panjang list3: ${list3.length}'); // Mencetak panjang list3

  // Mendefinisikan promoActive sebelum digunakan
  bool promoActive = true; // Atur nilai variabel promoActive
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet']; // Menggunakan if conditional
  print('Navigasi (promoActive true): $nav'); // Mencetak navigasi jika promoActive true

  // Uji dengan promoActive sebagai false
  promoActive = false; // Ubah nilai variabel promoActive
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet']; // Menggunakan if conditional
  print('Navigasi (promoActive false): $nav'); // Mencetak navigasi jika promoActive false

  // Definisikan variabel login
  String login = 'Manager'; // Ubah nilai untuk menguji kondisi lain
  var nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print('Navigasi dengan login: $nav2'); // Mencetak navigasi berdasarkan login

  // Uji dengan kondisi login lainnya
  login = 'User'; // Ubah nilai untuk menguji kondisi lain
  nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print('Navigasi dengan login: $nav2'); // Mencetak navigasi dengan login User
  
  login = 'Admin'; // Ubah nilai untuk menguji kondisi lain
  nav2 = ['Home', 'Furniture', 'Plants', if (login == 'Manager') 'Inventory'];
  print('Navigasi dengan login: $nav2'); // Mencetak navigasi dengan login Admin

  // Menambahkan listOfStrings menggunakan Collection For
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1'); // Memastikan elemen kedua adalah '#1'
  print('List of Strings: $listOfStrings');
}
