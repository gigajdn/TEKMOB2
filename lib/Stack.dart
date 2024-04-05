import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 100),
          width: 250,
          height: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 208, 121, 219),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 50,
                top: 100,
                child: Container(
                  color: const Color.fromRGBO(255, 59, 190, 1),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "New Text",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 50,
                bottom: 100,
                child: Container(
                  color: const Color.fromRGBO(91, 149, 196, 1),
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "AWESOME",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
