import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/article.dart';

class Articles with ChangeNotifier {
  List<Article> _articleItem = List.generate(20, (index) {
    return Article(
        index,
        Faker().lorem.sentence(),
        Faker().lorem.sentence(),
        'https://picsum.photos/1080/1000?random=$index',
        Faker().person.firstName(),
        "Science",
        Faker().lorem.sentence());
  });

  List<Article> get articleItem {
    return [..._articleItem];
  }

  // void addArticle() {
  //   _articleItem.add(Article(
  //       Faker().lorem.sentence(),
  //       Faker().lorem.sentence(),
  //       'https://picsum.photos/1080/1000?random=1',
  //       Faker().person.firstName(),
  //       "Science",
  //       Faker().lorem.sentence()));
  //   notifyListeners();
  // }
}
