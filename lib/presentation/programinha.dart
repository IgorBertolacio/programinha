import 'package:flutter/material.dart';
import 'pages/my_home_page.dart';

/// Programinha é a classe principal que inicializa o MaterialApp.
class Programinha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}
