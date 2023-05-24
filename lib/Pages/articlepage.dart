import 'package:flutter/material.dart';
import 'package:knowpedia/providers/favoriteservice.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';

class ArticlePage extends StatelessWidget {
  static const routeName = '/article-detail';
  final String id;
  final String uid;
  final String description;
  final String title;
  final String image;
  final String author;
  final String category;
  final String content;

  const ArticlePage(this.id, this.uid, this.description, this.title, this.image,
      this.author, this.category, this.content,
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
            padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
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
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
                    child: InkWell(
                        onTap: () {
                          Provider.of<Favorites>(context, listen: false)
                              .addFavs(id, uid, title, description, image,
                                  author, category, content);
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: warnaOren),
                          //color: warnaOren,
                          child: const Text("Add to Favorite",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat")),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: 480,
              child: Text(
                content,
                style: const TextStyle(
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
