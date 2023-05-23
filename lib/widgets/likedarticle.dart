import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../Pages/articlepage.dart';
import '../providers/favoriteservice.dart';

class LikedArticle extends StatelessWidget {
  //const LikedArticle({});
  String id;
  String uid;
  String description;
  String title;
  String image;
  String author;
  String category;
  String content;

  LikedArticle(this.id, this.uid, this.description, this.title, this.image,
      this.author, this.category, this.content,
      {super.key});

  @override
  Widget build(BuildContext context) {
    // CachedNetworkImage(
    //       imageUrl: data.image,
    //       placeholder: (context, url) => CircularProgressIndicator(),
    //       errorWidget: (context, url, error) => Icon(Icons.error),
    //     );
    return Dismissible(
      key: ValueKey(id),
      onDismissed: (DismissDirection direction) {
        Provider.of<Favorites>(context, listen: false).removeFavs(id);
      },
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticlePage(id, uid, description, title,
                      image, author, category, content)));
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 5),
          child: Container(
            width: 480,
            height: 110,
            color: Colors.transparent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: NetworkImage(image),
                    width: 100,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 1),
                        child: SizedBox(
                          width: 250,
                          child: Text(title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: warnaUngu,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5,
                                  fontFamily: "Montserrat")),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(
                              color: warnaUngu,
                              height: 1.5,
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Montserrat"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Text("• ${category}",
                                  style: const TextStyle(
                                      color: warnaOren,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Montserrat")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("• By ${author}",
                                  style: const TextStyle(
                                      color: warnaOren,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Montserrat")),
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.only(left: 130.0),
                            //   child: Icon(
                            //     Icons.favorite_border,
                            //     color: warnaOren,
                            //     size: 15,
                            //   ),
                            // ),
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
      ),
    );
  }
}
