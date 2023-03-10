import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/article.dart';
import 'package:knowpedia/Pages/settings.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: warnaUngu, size: 30),
        centerTitle: true,
        toolbarHeight: 80,
        title: const Text('Profile',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
              icon: const Icon(Icons.settings),
              color: warnaUngu,
              iconSize: 20,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                NetworkImage('https://picsum.photos/100/100'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Christian Abraham',
                                    style: TextStyle(
                                      color: warnaUngu,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 4),
                                  child: SizedBox(
                                    width: 230,
                                    child: Text(
                                        'Ya ini adalah bio saya, saya seorang yang bisa ngoding flutter',
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.clip,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: warnaUngu,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          height: 1.5,
                                        )),
                                  ),
                                ),

                                // Container(
                                //   height: 15,
                                //   width: 50,
                                //   color: warnaUngu,
                                // )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          color: Colors.transparent,
                          child: Column(children: const [
                            Text('100',
                                style: TextStyle(
                                  color: warnaUngu,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                )),
                            Text('Followed',
                                style: TextStyle(
                                  color: warnaUngu,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                )),
                          ]),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          color: Colors.transparent,
                          child: Column(children: const [
                            Text('100',
                                style: TextStyle(
                                  color: warnaUngu,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                )),
                            Text('Following',
                                style: TextStyle(
                                  color: warnaUngu,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                )),
                          ]),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          color: Colors.transparent,
                          child: Column(children: const [
                            Text('100',
                                style: TextStyle(
                                  color: warnaUngu,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20,
                                )),
                            Text('Articles',
                                style: TextStyle(
                                  color: warnaUngu,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                )),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Latest Articles",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  ProfileArticle(),
                  ProfileArticle(),
                  ProfileArticle(),
                  ProfileArticle(),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class ProfileArticle extends StatelessWidget {
  const ProfileArticle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Article()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          height: 150,
          child: Row(
            children: [
              SizedBox(
                width: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: const Image(
                    image: NetworkImage("https://picsum.photos/280/150"),
                    width: 280,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 1),
                      child: SizedBox(
                        width: 230,
                        child: Text(
                            "Ini Judul Artikel Yang Eye Catchy Tes Judul Panjang",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: warnaUngu,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                fontFamily: "Montserrat")),
                      ),
                    ),
                    const SizedBox(
                      width: 230,
                      child: Text(
                        "Ini subtitle artikel yang menarik tapi ndatau kalian bakal tertarik atau tidak ya memang agak panjang ya jadi ini buat ngetes aja sih sepanjang apa teks ini semoga bisa panjang",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: warnaUngu,
                            height: 1.5,
                            fontSize: 9,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: warnaUngu),
                            child: const Center(
                                child: Text(
                              "Science",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat"),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
