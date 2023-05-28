import 'package:flutter/material.dart';
import 'package:knowpedia/providers/favoriteservice.dart';
import 'package:knowpedia/widgets/likedarticle.dart';
import 'package:provider/provider.dart';
import '../Components/searchbar.dart';
import '../Components/colors.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Favorites>(context);
    final dataMain = data.items;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 75,
        title: const Text('Favorite',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Column(children: [
          searchBar(),
          Flexible(
            child: (dataMain.isEmpty)
                ? const Center(
                    child: Text(
                    "You haven't liked any article yet",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w300,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ))
                : ListView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (context, index) =>
                        ChangeNotifierProvider.value(
                            value: dataMain[index],
                            child: LikedArticle(
                                dataMain.values.toList()[index].id,
                                dataMain.values.toList()[index].uid,
                                dataMain.values.toList()[index].description,
                                dataMain.values.toList()[index].title,
                                dataMain.values.toList()[index].image,
                                dataMain.values.toList()[index].author,
                                dataMain.values.toList()[index].category,
                                dataMain.values.toList()[index].content)),
                    itemCount: dataMain.length),
          ),
        ]),
      ),
    );
  }
}
