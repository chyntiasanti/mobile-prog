import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Transaction History',
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w600),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicator: UnderlineTabIndicator(
            borderSide:
                BorderSide(width: 3.0, color: Colors.red), // Red underline
            insets: EdgeInsets.symmetric(
                horizontal: 150.0), // Extends to almost full width
          ),
          labelStyle:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.normal),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(text: 'Pending'),
            Tab(text: 'Done'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PendingTransactions(),
          CompletedTransactions(),
        ],
      ),
    );
  }
}

class PendingTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/ayobisa.png',
            width: 300, // Lebar gambar
            height: 300, // Tinggi gambar
          ),
          SizedBox(height: 16),
          Text(
            'All Transactions are Completed!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Any pending transactions will appear on this page',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class CompletedTransactions extends StatelessWidget {
  final List<TransactionItem> transactions = [
    TransactionItem(
      title: 'Pay Merchant',
      date: '15 Sep 2024, 17:32 WIB',
      status: 'Success',
      amount: 'Rp45.400',
      description: 'Indomaret_purchase',
    ),
    TransactionItem(
      title: 'Pay Merchant',
      date: '15 Sep 2024, 17:28 WIB',
      status: 'Success',
      amount: 'Rp55.000',
      description: 'Indomaret_purchase',
    ),
    TransactionItem(
      title: 'Top Up from Bank',
      date: '15 Sep 2024, 17:26 WIB',
      status: 'Success',
      amount: 'Rp100.000',
      description: 'Top Up from artajasa B_001145615163862752\n6285755730905',
    ),
    TransactionItem(
      title: 'Pay QRIS',
      date: '31 Aug 2024, 11:49 WIB',
      status: 'Success',
      amount: 'Rp21.000',
      description: 'SBY- MOG TP S1',
    ),
    TransactionItem(
      title: 'Pay Merchant',
      date: '25 Aug 2024, 10:30 WIB',
      status: 'Success',
      amount: 'Rp30.000',
      description: 'Alfamart_purchase',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionCard(item: transactions[index]);
      },
    );
  }
}

class TransactionItem {
  final String title;
  final String date;
  final String status;
  final String amount;
  final String description;

  TransactionItem({
    required this.title,
    required this.date,
    required this.status,
    required this.amount,
    required this.description,
  });
}

class TransactionCard extends StatelessWidget {
  final TransactionItem item;

  const TransactionCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0, // Remove shadow
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.amount,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.date,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  item.status,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Bold and green
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              item.description,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.black, // More prominent description
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HistoryPage(),
  ));
}
