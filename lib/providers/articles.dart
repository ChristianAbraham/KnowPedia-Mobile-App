import 'dart:convert';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/article.dart';
import 'package:http/http.dart' as http;

class Articles with ChangeNotifier {
  String? token;
  String? uid;

  void updateToken(String newToken, String newUid) {
    token = newToken;
    uid = newUid;
    notifyListeners();
  }

  // String tokenAccess() {
  //   token = saveToken;
  //   return token!;
  // }

  List<Article> _articleItem = [];

  List<Article>? _userArticle = [];

  List<Article> get userArticle {
    return [..._userArticle!];
  }

  List<Article> get articleItem {
    return [..._articleItem];
  }

  Future<void> profileData() async {
    //String tokent = tokenAccess();
    print(token);
    Uri url = Uri.parse(
        'https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/articles.json?auth=$token&orderBy="uid"&equalTo="$uid"');

    print(url);

    var hasilGetData = await http.get(url);

    var dataResponse = json.decode(hasilGetData.body) as Map<String, dynamic>?;
    //print(dataResponse);

    _userArticle!.clear();
    dataResponse?.forEach(
      (key, value) {
        _userArticle?.add(
          Article(
            id: key,
            uid: value["uid"],
            title: value["title"],
            description: value["description"],
            image: value["image"],
            author: value["author"],
            category: value["category"],
            content: value["content"],
          ),
        );
      },
    );
    notifyListeners();

    print("Data Profile Berhasil Diambil");
  }

  Future<void> dataMaster() async {
    //String tokent = tokenAccess();
    print(token);
    Uri url = Uri.parse(
        'https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/articles.json?auth=$token');

    print(url);

    var hasilGetData = await http.get(url);

    var dataResponse = json.decode(hasilGetData.body) as Map<String, dynamic>?;
    //print(dataResponse);

    _articleItem.clear();
    dataResponse?.forEach(
      (key, value) {
        _articleItem.add(
          Article(
            id: key,
            uid: value["uid"],
            title: value["title"],
            description: value["description"],
            image: value["image"],
            author: value["author"],
            category: value["category"],
            content: value["content"],
          ),
        );
      },
    );
    notifyListeners();

    print("Data Master Berhasil Diambil");
  }

  Future<void> addArticle(String title, String description, String image,
      String author, String category, String content) {
    //String tokent = tokenAccess();
    Uri url = Uri.parse(
        'https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/articles.json?auth=$token');

    //print(_userArticle);
    return http
        .post(url,
            body: json.encode({
              'uid': uid,
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
          uid: uid!,
          title: title,
          description: description,
          image: image,
          author: author,
          category: category,
          content: content));
      notifyListeners();
    });
  }

  Future<void> editArtic(String id, String title, String description,
      String image, String category, String content) {
    //String tokent = tokenAccess();
    Uri url = Uri.parse(
        'https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/articles/$id.json?auth=$token');

    return http
        .patch(url,
            body: json.encode({
              'id': id,
              'title': title,
              'description': description,
              'image': image,
              'category': category,
              'content': content,
            }))
        .then((response) {
      Article selectArticle =
          _userArticle!.firstWhere((element) => element.id == id);
      selectArticle.title = title;
      selectArticle.description = description;
      selectArticle.image = image;
      selectArticle.category = category;
      selectArticle.content = content;
      notifyListeners();
    });
  }

  // void checkArt() {
  //   _userArticle.forEach(print);
  // }

  Future<void> deleteArt(String id) {
    //String tokent = tokenAccess();
    Uri url = Uri.parse(
        'https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/articles/$id.json?auth=$token');

    print(_userArticle);

    return http.delete(url).then(
      (response) {
        _userArticle!.removeWhere((element) => element.id == id);
        notifyListeners();
      },
    );
  }
}
