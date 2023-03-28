import 'package:flutter/material.dart';
import '../Components/colors.dart';
import '../Pages/articlepage.dart';

class MainArticle extends StatelessWidget {
  String image = "https://picsum.photos/280/130";
  String title = "Lorem Ipsum Judul Waw";
  String author = "Hana";

  MainArticle({required this.image, required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ArticlePage()));
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
                child: Image(
                  image: NetworkImage(image),
                  width: 280,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 10, 0, 5),
                child: SizedBox(
                  width: 280,
                  child: Text(title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
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
                    padding: EdgeInsets.fromLTRB(0, 2, 8, 0),
                    child: Text("• By $author",
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
            ],
          ),
        ),
      ),
    );
  }
}
