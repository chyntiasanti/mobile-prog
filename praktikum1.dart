void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  // Ganti nama variabel dan perbaiki kondisi if
  String test2 = "true";
  if (test2 == "true") { // Kondisi yang benar untuk mengecek string "true"
    print("Kebenaran");
  }
}
