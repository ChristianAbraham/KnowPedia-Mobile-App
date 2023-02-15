import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/favorite.dart';
import 'package:knowpedia/Pages/homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage()
    );
  }
}

