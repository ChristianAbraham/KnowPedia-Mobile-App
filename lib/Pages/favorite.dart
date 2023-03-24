import 'package:flutter/material.dart';
import '../Components/searchbar.dart';
import 'homepage.dart';
import '../Components/colors.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 75,
        title: const Text('Favorite',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Column(children: [
          searchBar(),
          Flexible(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return DailyInsight(
                  image: "https://picsum.photos/90/100",
                  title: "Ini Judul Artikel Yang Eye Catchy Tes Judul Panjang",
                  subtitle:
                      "Ini subtitle artikel yang menarik tapi ndatau kalian bakal tertarik atau tidak ya memang agak panjang ya",
                  kategori: "Science",
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
