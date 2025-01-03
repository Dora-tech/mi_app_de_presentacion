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
          body:Column(
            children: [
              CircleAvatar(
                  child: Text('PR'),
                  radius: 200,
              )
        ],       
      )
    ); // Placeholder es un widget de ejemplo
  }
}