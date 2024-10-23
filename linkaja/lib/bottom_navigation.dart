import 'package:flutter/material.dart';
import 'home_page.dart';
import 'history_page.dart';
import 'pay_page.dart';
import 'inbox_page.dart';
import 'account_page.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  // Daftar halaman yang akan ditampilkan di setiap tab
  final List<Widget> _pages = [
    HomePage(),
    HistoryPage(),
    PayPage(),
    InboxPage(),
    AccountPage(),
  ];

  // Mengganti halaman berdasarkan tab yang dipilih
  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background putih untuk body
      body: _pages[_currentIndex], // Halaman sesuai dengan tab yang dipilih
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            // Garis di atas bottom navigation
            thickness: 1,
            color: Colors.grey.withOpacity(0.3), // Warna transparan untuk garis
          ),
          BottomNavigationBar(
            backgroundColor:
                Colors.white, // Background putih untuk navigation bar
            currentIndex: _currentIndex, // Indeks saat ini
            onTap: _onTap, // Event ketika tombol navigasi di-tap
            selectedItemColor: Colors.red, // Warna ketika item dipilih
            unselectedItemColor: const Color.fromARGB(
                255, 61, 60, 60), // Warna item yang tidak dipilih
            type: BottomNavigationBarType.fixed, // Agar semua item tampil
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home), // Ikon untuk Home
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history), // Ikon untuk History
                label: 'History',
              ),
              BottomNavigationBarItem(
                // Menggunakan kotak berwarna merah untuk Pay
                icon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(
                        8), // Membuat kotak dengan sudut membulat
                  ),
                  child: Icon(Icons.qr_code_2,
                      color: Colors.white), // Ikon QR code untuk Pay
                ),
                label: 'Pay',
              ),
              BottomNavigationBarItem(
                // Menggunakan Stack untuk menambahkan badge pada ikon Inbox
                icon: Stack(
                  children: [
                    Icon(Icons.inbox), // Ikon untuk Inbox
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          color: Colors.red, // Warna merah untuk badge
                          shape: BoxShape.circle,
                        ),
                        constraints: BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: Text(
                          '1', // Badge angka
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8, // Ukuran font kecil untuk badge
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person), // Ikon untuk Account
                label: 'Account',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
