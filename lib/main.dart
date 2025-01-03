import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Imagen de perfil circular
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'), // Ruta de tu imagen
              ),
              const SizedBox(height: 10),
              // Nombre del usuario
              const Text(
                'Dora Callisaya',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              // Íconos sociales
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.facebook, color: Colors.white, size: 30),
                  SizedBox(width: 15),
                  Icon(Icons.email, color: Colors.white, size: 30),
                  SizedBox(width: 15),
                  Icon(Icons.link, color: Colors.white, size: 30), // Logo de X
                  SizedBox(width: 15),
                  Icon(Icons.linked_camera, color: Colors.white, size: 30),
                ],
              ),
              const SizedBox(height: 20),
              // Código QR
              Container(
                width: 120,
                height: 120,
                color: Colors.white,
                child: Center(
                  child: Image.asset('assets/qr_code.png'), // Ruta de tu QR
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Mi portafolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Mis proyectos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Mis referencias',
          ),
        ],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}