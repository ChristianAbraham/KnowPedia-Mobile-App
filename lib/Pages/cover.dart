import 'package:flutter/material.dart';
import 'package:knowpedia/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "KnowPedia",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.purple,
                fontSize: 40,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}

