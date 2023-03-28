import 'package:flutter/material.dart';
import '../Components/colors.dart';

class Write extends StatelessWidget {
  const Write({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 75,
          title: const Text('Write',
              style: TextStyle(
                  color: warnaUngu,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Montserrat")),
        ),
        body: Column());
  }
}
