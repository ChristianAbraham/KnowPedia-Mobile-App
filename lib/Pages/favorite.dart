import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../Components/searchbar.dart';
import '../Components/colors.dart';
import '../models/article.dart';
import '../widgets/dailyinsight.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    List<Article> dataMain = List.generate(20, (index) {
      return Article(
          faker.lorem.sentence(),
          faker.lorem.sentence(),
          'https://picsum.photos/280/300?random=$index',
          faker.person.firstName(),
          "Science",
          faker.lorem.sentence());
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 75,
        title: const Text('Favorite',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Column(children: [
          searchBar(),
          Flexible(
            child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  return DailyInsight(
                    image: dataMain[index + 4].image,
                    title: dataMain[index + 4].title,
                    subtitle: dataMain[index + 4].description,
                    kategori: dataMain[index + 4].category,
                    author: dataMain[index + 4].author,
                  );
                },
                itemCount: 6),
          ),
        ]),
      ),
    );
  }
}
