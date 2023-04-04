import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
