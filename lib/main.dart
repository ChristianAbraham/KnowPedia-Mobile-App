import 'package:flutter/material.dart';
import 'package:knowpedia/providers/articles.dart';
import 'package:provider/provider.dart';
import 'Pages/login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Articles(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.purple),
          home: LoginScreen()),
    );
  }
}
