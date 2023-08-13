import 'package:flutter/material.dart';
import 'TelaPrincipal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TelaPrincipal(),
    );
  }
}
