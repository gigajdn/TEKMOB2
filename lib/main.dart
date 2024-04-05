import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stylish Card'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 5, // Add a subtle shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    // Display a circular avatar                   
                  ),
                  title: Text(
                    'NAMAKU',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Nama'),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'This is a stylish card!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
