import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/article.dart';
import 'package:knowpedia/Pages/profile.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          toolbarHeight: 95,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                      child: Text("Hello!",
                          style: TextStyle(
                              color: warnaUngu,
                              fontSize: 19,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                    ),
                    Text("Christian",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 32,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: const CircleBorder(),
                    elevation: 0,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/130/130"),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()));
                  },
                ),
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  child: Text("Main Article",
                      style: TextStyle(
                          color: warnaUngu,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat")),
                ),
                SizedBox(
                  height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MainArticle(),
                      MainArticle(),
                      MainArticle(),
                      MainArticle(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 20),
                  child: Text("Daily Insight",
                      style: TextStyle(
                          color: warnaUngu,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat")),
                ),
                const DailyInsight(),
                const DailyInsight(),
                const DailyInsight(),
                const DailyInsight(),
                const DailyInsight(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class DailyInsight extends StatelessWidget {
  const DailyInsight({
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
        padding: const EdgeInsets.only(bottom: 20, top: 5),
        child: Container(
          width: 480,
          height: 100,
          color: Colors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: NetworkImage("https://picsum.photos/90/100"),
                  width: 90,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 0, bottom: 1),
                      child: SizedBox(
                        width: 250,
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
                      width: 250,
                      child: Text(
                        "Ini subtitle artikel yang menarik tapi ndatau kalian bakal tertarik atau tidak ya memang agak panjang ya",
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
                      padding: const EdgeInsets.only(top: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            height: 13,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("• By Hana",
                                style: TextStyle(
                                    color: warnaOren,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat")),
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

class MainArticle extends StatelessWidget {
  const MainArticle({
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
        padding: const EdgeInsets.only(right: 35),
        child: Container(
          width: 280,
          height: 200,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: NetworkImage("https://picsum.photos/280/130"),
                  width: 280,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: SizedBox(
                  width: 280,
                  child: Text("Lorem Ipsum Judul Waw",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: warnaUngu,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat")),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
