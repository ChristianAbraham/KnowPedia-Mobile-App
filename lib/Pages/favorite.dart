import 'package:flutter/material.dart';
import 'homepage.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Favorite', 
        style: TextStyle(color: warnaUngu,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.bold,
        fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Column(
          children: [ 
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const DailyInsight();
                },
              ),
            ),
          ]
        ),
      ),
    );
  }
}