import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:knowpedia/widgets/explore_builder.dart';

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
            SearchBar(),
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
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
                        child: SizedBox(
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
                            child: SizedBox(
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
                  const ExploreBuilder()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
