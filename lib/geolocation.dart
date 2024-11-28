import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Variabel untuk menyimpan Future<Position>
  Future<Position>? position;

  @override
  void initState() {
    super.initState();
    position = getPosition(); // Memanggil getPosition saat initState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location'),
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                position = getPosition(); // Refresh posisi saat tombol ditekan
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Center(
          child: FutureBuilder<Position>(
            future: position, // Menggunakan position sebagai future
            builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
              // Menunggu data posisi (status loading)
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              // Jika data sudah tersedia
              else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  // Menampilkan pesan error jika terjadi kesalahan
                  return const Text('Something terrible happened!');
                }
                if (snapshot.hasData) {
                  // Menampilkan latitude dan longitude
                  return Text(
                    'Latitude: ${snapshot.data!.latitude}\nLongitude: ${snapshot.data!.longitude}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  );
                } else {
                  return const Text('Tidak ada data lokasi');
                }
              }
              // Jika terjadi error yang lain
              else {
                return const Text('Terjadi kesalahan');
              }
            },
          ),
        ),
      ),
    );
  }

  // Mengambil posisi saat ini
  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Layanan lokasi tidak diaktifkan');
    }

    // Mengambil posisi dengan akurasi tinggi
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }
}
