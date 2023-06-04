import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';

import '../providers/articles.dart';

class SearchBar extends StatefulWidget {
  SearchBar({
    super.key,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController controller = TextEditingController();
  dynamic data;
  dynamic dataMain;

  @override
  Widget build(BuildContext context) {
    data = Provider.of<Articles>(context);
    dataMain = data.articleItem;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 40,
        color: Colors.transparent,
        child: TextField(
          controller: controller,
          onChanged: searchArticle,
          decoration: const InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
                color: warnaUngu, fontFamily: "Montserrat", fontSize: 11.5),
            prefixIcon: Icon(
              Icons.search,
              color: warnaUngu,
              size: 18,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: warnaUngu),
            ),
          ),
        ),
      ),
    );
  }

  void searchArticle(String search) {
    final suggestion = Articles().articleItem.where((element) {
      final titleLower = element.title.toLowerCase();
      final searchLower = search.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();
    setState(() {
      dataMain = suggestion;
    });
  }
}
