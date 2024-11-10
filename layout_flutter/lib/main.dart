import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Menyusun titleSection di dalam build method
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Menambahkan padding
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Mengatur alignment kiri
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 8), // Menambahkan padding bawah
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: const Color.fromARGB(
                        255, 130, 135, 160), // Menambahkan warna teks abu-abu
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500], // Warna ikon merah
          ),
          const Text('41'), // Menambahkan teks di sebelah ikon
        ],
      ),
    );

    // Menambahkan buttonSection di bawah titleSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Menambahkan textSection di bawah buttonSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pura Ulun Danu Beratan Bedugul adalah salah satu pura paling ikonik di Bali yang terletak di tepi Danau Beratan, kawasan Bedugul, Kabupaten Tabanan.'
        'Pura ini dibangun pada abad ke-17, tepatnya pada tahun 1633, dan didedikasikan untuk Dewi Danu, dewi air, danau, serta sungai dalam agama Hindu.'
        'Arsitektur pura ini sangat khas, dengan menara berundak yang disebut "meru", di mana menara utamanya memiliki sebelas tingkat.\n\n'
        'Keunikan Pura Ulun Danu terletak pada posisinya yang tampak seolah mengambang di atas Danau Beratan ketika permukaan air naik, menciptakan pemandangan yang menakjubkan.'
        'Pura ini terletak di dataran tinggi, sekitar 1.200 meter di atas permukaan laut, yang membuat udara di sekitarnya sejuk dan segar.'
        'Suasana ini menjadikan Pura Ulun Danu Beratan Bedugul sebagai tempat yang sempurna untuk menghindari panasnya Bali bagian selatan dan menikmati ketenangan alam pegunungan.\n\n'
        'Selain menjadi tempat ibadah penting bagi umat Hindu Bali, pura ini juga merupakan destinasi wisata populer karena pemandangan alamnya yang memukau dan arsitekturnya yang mengesankan.'
        'Selain menikmati keindahan pura dan danau, pengunjung juga bisa menikmati berbagai aktivitas lain, seperti berperahu di Danau Beratan atau menjelajahi taman-taman indah di sekitar pura.'
        'Kawasan ini sangat terawat dan cocok untuk bersantai sambil menikmati keindahan alam.'
        'Dari Denpasar, ibu kota Bali, Pura Ulun Danu dapat dicapai dalam waktu sekitar 1,5 hingga 2 jam perjalanan dengan mobil.\n\n'
        'Waktu terbaik untuk mengunjungi pura ini adalah pagi atau sore hari, ketika udara masih sejuk dan cahaya matahari menciptakan pantulan yang indah di atas permukaan danau.'
        'Dengan keindahan arsitektur, suasana spiritual, dan pemandangan alam yang menawan, Pura Ulun Danu Beratan Bedugul bukan hanya merupakan tempat ibadah penting bagi masyarakat Bali, tetapi juga simbol budaya dan destinasi wisata yang harus dikunjungi. \n \n'
        'Nama: Chyntia Santi Nur Trisnawati\n'
        'NIM: 2241720017',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Chyntia Santi Nur Trisnawati NIM 2241720017',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Pura.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Menampilkan titleSection
            buttonSection, // Menampilkan buttonSection
            textSection, // Menampilkan textSection
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
