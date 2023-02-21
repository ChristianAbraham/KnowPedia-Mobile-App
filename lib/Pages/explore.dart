import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';

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
                    child: Container(
                      width: 306,
                      height: 149,
                      child: ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(15),
                        child: Stack(children: [
                          const Image(
                            width: 400,
                            height: 200,
                            fit: BoxFit.cover,
                            image:
                                NetworkImage("https://picsum.photos/300/220"),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 15),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              child: const Text(
                                'Main Article',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          width: 170,
                          height: 172,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(children: [
                              const Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://picsum.photos/405/400")),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 15, left: 15),
                                child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: const Text(
                                      'Technology',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Montserrat'),
                                    )),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 177.3,
                            height: 78,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Stack(children: [
                                const Image(
                                    width: 400,
                                    height: 200,
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://picsum.photos/280/180")),
                                Container(
                                  alignment: Alignment.bottomLeft,
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 15, left: 15),
                                    child: Text(
                                      'Sport',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Montserrat'),
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              width: 177.3,
                              height: 78,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Stack(children: [
                                  const Image(
                                      width: 400,
                                      height: 200,
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://picsum.photos/280/180")),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 15, left: 15),
                                      child: Text(
                                        'Food',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const ExploreArticle(),
                  const ExploreArticle(),
                  const ExploreArticle(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExploreArticle extends StatelessWidget {
  const ExploreArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 0),
      child: SizedBox(
        width: 306,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 149,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                    image: NetworkImage("https://picsum.photos/500/200")),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7, bottom: 5),
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
              children: const [
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
    );
  }
}
