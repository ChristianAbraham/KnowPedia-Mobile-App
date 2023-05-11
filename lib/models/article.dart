import 'package:flutter/material.dart';

class Article with ChangeNotifier {
  String id;
  String title;
  String description;
  String image;
  String author;
  String category;
  String content;

  Article({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.author,
    required this.category,
    required this.content,
  });
}
