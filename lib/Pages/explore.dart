import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/homepage.dart';

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
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Flexible(
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(width: 306, height: 149, color: warnaOren),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 148,
                          height: 170,
                          color: warnaUngu,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 148,
                              height: 78,
                              color: warnaOren,
                            ),
                            Container(
                              width: 148,
                              height: 78,
                              color: warnaUngu,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  MainArticle(),
                  MainArticle(),
                  MainArticle(),
                  MainArticle(),
                  MainArticle(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
