import 'package:flutter/material.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: warnaUngu, size: 30),
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Explore', 
        style: TextStyle(color: warnaUngu,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.bold,
        fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Ini Explore"),
      ),
    );
  }
}