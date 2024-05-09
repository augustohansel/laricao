import 'package:flutter/material.dart';
import 'screens/welcome_page.dart'; // Importe sua página de boas-vindas aqui

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(), // Defina sua página de boas-vindas como a página inicial
    );
  }
}
