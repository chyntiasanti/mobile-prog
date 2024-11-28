import 'package:flutter/material.dart';
import 'navigation_second.dart'; // Asumsikan file layar kedua adalah 'navigation_second.dart'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NavigationFirst(),
    );
  }
}

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color backgroundColor =
      const Color.fromARGB(255, 12, 95, 162); // Warna latar belakang default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // AppBar berwarna biru
        title: const Text(
          'Navigation First Screen',
          style: TextStyle(color: Colors.white), // Teks berwarna putih
        ),
      ),
      body: Container(
        color: backgroundColor, // Mengubah warna latar belakang
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationSecond()),
              );
              if (result != null) {
                setState(() {
                  backgroundColor =
                      result; // Mengubah warna latar belakang sesuai pilihan
                });
              }
            },
            child: const Text('Change Color'),
          ),
        ),
      ),
    );
  }
}
