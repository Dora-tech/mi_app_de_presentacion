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
    return Scaffold(
      backgroundColor: Colors.indigo,
      body:SizedBox(
        height: 200,
        width: 200,
        child: const Placeholder(),
      )
    ); // Placeholder es un widget de ejemplo
  }
}