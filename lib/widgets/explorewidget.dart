import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../Pages/articlepage.dart';
import '../models/article.dart';

class ExploreArticle extends StatelessWidget {
  const ExploreArticle({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Article>(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticlePage(
                    data.id,
                    data.uid,
                    data.description,
                    data.title,
                    data.image,
                    data.author,
                    data.category,
                    data.content)));
      },
      child: Container(
        width: 360,
        height: 225,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: NetworkImage(data.image),
                width: 360,
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 10, 0, 5),
                        child: SizedBox(
                          width: 360,
                          child: Text(data.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  height: 1.5,
                                  color: warnaUngu,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Montserrat")),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(2, 2, 8, 0),
                            child: Text("• Science",
                                style: TextStyle(
                                    color: warnaOren,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat")),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 8, 0),
                            child: Text("• By ${data.author}",
                                style: const TextStyle(
                                    color: warnaOren,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat")),
                          ),
                          const Padding(
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
                    ]),
                // IconButton(
                //   splashRadius: 10,
                //   onPressed: () {},
                //   icon: const Icon(Icons.favorite_border_rounded),
                //   iconSize: 20,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
