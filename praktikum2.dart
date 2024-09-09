void main() {
  int counter = 0; // Deklarasikan counter

  // Loop pertama dengan do-while
  do {
    print(counter);
    counter++;
  } while (counter < 77);

  // Loop kedua dengan while (tidak akan dieksekusi karena counter >= 33)
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
