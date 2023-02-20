import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:knowpedia/Components/searchbar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: warnaUngu, size: 30),
        toolbarHeight: 75,
        title: const Text('About Us', 
        style: TextStyle(
          color: warnaUngu, 
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 25),),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
    );
  }
}