import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView yang Menarik',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: items.length,
          itemBuilder: (BuildContext ctx, int index) {
            return GestureDetector(
              onTap: () => _showWordDialog(context, items[index]),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 44, 214), // Ubah warna latar belakang
                  borderRadius: BorderRadius.circular(10), // Tambahkan sudut melengkung
                ),
                child: Center(
                  child: Text(
                    'Level ${items[index]}',
                    style: const TextStyle(
                      color: Colors.white, // Ubah warna teks
                      fontSize: 20, // Perbesar ukuran font
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showWordDialog(BuildContext context, String word) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Kata yang dipilih'),
          content: Text(word),
          actions: [
            FlatButton(
              child: const Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
  
  FlatButton({required Text child, required void Function() onPressed}) {}
}
