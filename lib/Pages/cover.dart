import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/favorite.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: warnaUngu,
        body: Center(
          child: Text(
            "KnowPedia",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}

