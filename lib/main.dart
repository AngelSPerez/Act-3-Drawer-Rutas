import 'package:flutter/material.dart';
import 'LasPaginas/home_screen.dart';
import 'LasPaginas/detalle_screen.dart';
import 'LasPaginas/perfil_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detalle': (context) => const DetalleScreen(),
        '/perfil': (context) => const PerfilScreen(),
      },
    ),
  );
}
