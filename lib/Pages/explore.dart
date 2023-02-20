import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';
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
        toolbarHeight: 75,
        title: const Text('Explore',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: [
            searchBar(),
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(width: 306, height: 149, color: warnaOren),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          width: 170,
                          height: 172,
                          color: warnaUngu,
                          child: Image(
                              image: NetworkImage(
                                  "https://picsum.photos/405/400")),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 177.3,
                            height: 78,
                            color: warnaOren,
                            child: ClipRRect(
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://picsum.photos/280/220")),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              width: 177.3,
                              height: 78,
                              color: warnaUngu,
                              child: Image(
                                  image: NetworkImage(
                                      "https://picsum.photos/280/130")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Container(
                      width: 306,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 149,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                  image: NetworkImage(
                                      "https://picsum.photos/500/200")),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Text("Lorem Ipsum Judul Waw",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: warnaUngu,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Montserrat")),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                                child: Text("• Science",
                                    style: TextStyle(
                                        color: warnaOren,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat")),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                                child: Text("• By Hana",
                                    style: TextStyle(
                                        color: warnaOren,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat")),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                                child: Text("• 2.5k View",
                                    style: TextStyle(
                                        color: warnaOren,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat")),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
