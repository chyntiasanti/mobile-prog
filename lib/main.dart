// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Chyntia',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const FuturePage(),
//     );
//   }
// }

// class FuturePage extends StatefulWidget {
//   const FuturePage({super.key});

//   @override
//   State<FuturePage> createState() => _FuturePageState();
// }

// class _FuturePageState extends State<FuturePage> {
//   String result = '';
//   bool isLoading = false;  // Track loading state

//   // Method to simulate an error
//   Future returnError() async {
//     await Future.delayed(const Duration(seconds: 2));
//     throw Exception('Something terrible happened!');
//   }

//   // Handle error using try-catch-finally
//   Future handleError() async {
//     try {
//       await returnError();  // Try to run the error simulation
//     } catch (error) {
//       setState(() {
//         result = error.toString();  // Handle error and update result
//       });
//     } finally {
//       print('Complete');  // This will always be executed after try-catch
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Async Error Handling with handleError - Chyntia'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center, // Center vertically
//           children: [
//             ElevatedButton(
//               child: const Text('Run Error Handling'),
//               onPressed: () {
//                 handleError();  // Call handleError method to manage errors
//               },
//             ),
//             const SizedBox(height: 20),
//             Text(result),  // Display result or error message
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:books/geolocation.dart';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Geolocation App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color for the app
      ),
      home:
          NavigationDialogScreen(), // Set the LocationScreen as the home screen
    );
  }
}
