import 'package:flutter/material.dart';
import '../Components/colors.dart';

class ArticlePage extends StatelessWidget {
  static const routeName = '/article-detail';
  String title;
  String image;
  String author;
  String category;
  String content;

  ArticlePage(this.title, this.image, this.author, this.category, this.content,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
              height: 200,
              width: 480,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 1.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
                      child: Text("• $category",
                          style: const TextStyle(
                              color: warnaOren,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat")),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
                      child: Text("• By $author",
                          style: const TextStyle(
                              color: warnaOren,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat")),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                      child: Text("• 2.5k View",
                          style: TextStyle(
                              color: warnaOren,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Montserrat")),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
                    child: InkWell(
                      onTap: () {
                        print("Added to Favorite");
                      },
                      child: const Icon(
                        Icons.favorite_border,
                        color: warnaOren,
                        size: 30,
                      ),
                    ))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: SizedBox(
              width: 480,
              child: Text(
                "Artikel panjang yang menjadi isi artikel nantinya  tapi ini cuma contoh saja ya, jadi tidak ada yang menarik di sini, hanya contoh saja.",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
