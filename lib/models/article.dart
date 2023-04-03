import 'package:flutter/material.dart';

class Article with ChangeNotifier {
  int id;
  String title;
  String description;
  String image;
  String author;
  String category;
  String content;

  Article(
    this.id,
    this.title,
    this.description,
    this.image,
    this.author,
    this.category,
    this.content,
  );
}
