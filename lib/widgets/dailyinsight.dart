import 'package:flutter/material.dart';

import '../Components/colors.dart';
import '../Pages/articlepage.dart';

class DailyInsight extends StatelessWidget {
  String image = "https://picsum.photos/90/100";
  String title = "Ini Judul Artikel Yang Eye Catchy Tes Judul Panjang";
  String subtitle =
      "Ini subtitle artikel yang menarik tapi ndatau kalian bakal tertarik atau tidak ya memang agak panjang ya";
  String kategori = "Science";
  String author = "Hana";

  DailyInsight(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.kategori,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ArticlePage()));
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
                        subtitle,
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
                            child: Text("• $kategori",
                                style: const TextStyle(
                                    color: warnaOren,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat")),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("• By $author",
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
