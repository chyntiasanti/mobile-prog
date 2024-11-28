import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color, // Use the selected color for background
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Chyntia'),
        backgroundColor: Colors.blue.shade700, // Set the app bar color to blue
        foregroundColor: Colors.white, // Set the text color to white
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            // Step 4: Calling the _showColorDialog method
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  // Async method to show the dialog
  Future<void> _showColorDialog(BuildContext context) async {
    Color? selectedColor = await showDialog<Color>(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Pink'),
              onPressed: () {
                Navigator.pop(context, const Color.fromARGB(255, 235, 56, 196));
              },
            ),
            TextButton(
              child: const Text('Purple'),
              onPressed: () {
                Navigator.pop(
                    context, const Color.fromARGB(255, 188, 112, 246));
              },
            ),
            TextButton(
              child: const Text('Yellow'),
              onPressed: () {
                Navigator.pop(context, const Color.fromARGB(255, 234, 191, 72));
              },
            ),
          ],
        );
      },
    );

    // If a color was selected, update the state
    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }
}
