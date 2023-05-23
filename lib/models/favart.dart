import 'package:flutter/material.dart';

class FavArt with ChangeNotifier {
  String id;
  String uid;
  String title;
  String description;
  String image;
  String author;
  String category;
  String content;

  FavArt(
    this.id,
    this.uid,
    this.title,
    this.description,
    this.image,
    this.author,
    this.category,
    this.content,
  );
}
