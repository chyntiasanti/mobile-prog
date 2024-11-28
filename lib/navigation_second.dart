import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // AppBar berwarna biru
        title: const Text(
          'Navigation Second Screen',
          style: TextStyle(color: Colors.white), // Teks berwarna putih
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Yellow'),
              onPressed: () {
                // Kirim warna merah kembali ke layar pertama
                Navigator.pop(context, const Color.fromARGB(255, 255, 208, 67));
              },
            ),
            ElevatedButton(
              child: const Text('Green'),
              onPressed: () {
                // Kirim warna hijau kembali ke layar pertama
                Navigator.pop(context, const Color.fromARGB(255, 17, 138, 21));
              },
            ),
            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                // Kirim warna biru kembali ke layar pertama
                Navigator.pop(context, const Color.fromRGBO(231, 66, 149, 1));
              },
            ),
          ],
        ),
      ),
    );
  }
}
