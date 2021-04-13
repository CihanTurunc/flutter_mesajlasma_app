import 'package:flutter/material.dart';
import 'package:flutter_mesajlasma_app/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mesajlaşma Uygulaması',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mesajlaşma Uygulaması Arayüzü'),
    );
  }
}

