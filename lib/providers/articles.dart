import 'dart:convert';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/article.dart';
import 'package:http/http.dart' as http;

class Articles with ChangeNotifier {
  List<Article> _articleItem = List.generate(20, (index) {
    return Article(
        id: DateTime.now().toString(),
        title: Faker().lorem.sentence(),
        description: Faker().lorem.sentence(),
        image: 'https://picsum.photos/1080/1000?random=$index',
        author: Faker().person.firstName(),
        category: "Science",
        content: Faker().lorem.sentence());
  });

  List<Article> get articleItem {
    return [..._articleItem];
  }

  Future<void> addArticle(String title, String description, String image,
      String author, String category, String content) {
    Uri url = Uri.parse(
        "https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/articles.json");

    return http
        .post(url,
            body: json.encode({
              'id': DateTime.now().toString(),
              'title': title,
              'description': description,
              'image': image,
              'author': author,
              'category': category,
              'content': content,
            }))
        .then((response) {
      _articleItem.add(Article(
          id: json.decode(response.body)["name"].toString(),
          title: title,
          description: description,
          image: image,
          author: author,
          category: category,
          content: content));
      notifyListeners();
    });
  }
}
