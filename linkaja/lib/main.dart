import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LinkAja Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BottomNavigation(),
    );
  }
}
