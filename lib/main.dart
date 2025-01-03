import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MiCartaDePresentacion(),
    );
  }
}

class MiCartaDePresentacion extends StatelessWidget {
  const MiCartaDePresentacion({super.key});


 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                child: const Text('PR'),
                radius: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}