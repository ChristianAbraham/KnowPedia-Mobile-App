import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../Pages/articlepage.dart';
import '../models/article.dart';

class DailyInsight extends StatelessWidget {
  const DailyInsight({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Article>(context);

    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticlePage(data.title, data.image,
                    data.author, data.category, data.content)));
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
                  image: NetworkImage(data.image),
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
                        child: Text(data.title,
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
                        data.description,
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
                            child: Text("• ${data.category}",
                                style: const TextStyle(
                                    color: warnaOren,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("• By ${data.author}",
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
    );
  }
}
