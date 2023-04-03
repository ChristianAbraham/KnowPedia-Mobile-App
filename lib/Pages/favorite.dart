import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/searchbar.dart';
import '../Components/colors.dart';
import '../providers/articles.dart';
import '../widgets/dailyinsight.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final dataMain = data.articleItem;

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
            child: ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) => ChangeNotifierProvider.value(
                    value: dataMain[index], child: DailyInsight()),
                itemCount: 6),
          ),
        ]),
      ),
    );
  }
}
