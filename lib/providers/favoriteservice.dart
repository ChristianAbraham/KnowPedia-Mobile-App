import 'package:flutter/material.dart';
import '../models/favart.dart';

class Favorites with ChangeNotifier {
  Map<String, FavArt> _items = {};

  Map<String, FavArt> get items => _items;

  void addFavs(String storyId, String uid, String title, String description,
      String image, String writer, String category, String content) {
    // ketika sudah tersedia
    if (_items.containsKey(storyId)) {
      print("Sudah ada di library");
    } else {
      _items.putIfAbsent(
          storyId,
          () => FavArt(storyId, uid, title, description, image, writer,
              category, content));

      notifyListeners();
    }
  }

  void removeFavs(String storyId) {
    _items.remove(storyId);
    notifyListeners();
  }
}
