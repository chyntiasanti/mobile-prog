// LANGKAH 1
// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);  // Output: {fluorine, chlorine, bromine, iodine, astatine}
// }

//LANGKAH 2
// void main() {
//   var names1 = <String>{};
// Set<String> names2 = {}; // This works, too.
// var names3 = {}; // Creates a map, not a set.

// print(names1);
// print(names2);
// print(names3);
// }

//LANGKAH 3
void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // Ini juga set kosong
  var names3 = {}; // Ini akan menjadi map kosong

  // Menambahkan elemen pada Set names1 menggunakan .add()
  names1.add("Chyntia Santi Nur Trisnwati"); 
  names1.add("2241720017");  

  // Menambahkan elemen pada Set names2 menggunakan .addAll()
  names2.addAll({"Chyntia Santi Nur Trisnwati", "2241720017"});

  print(names1);  
  print(names2);  
  print(names3);  
}

