import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';
import '../widgets/mainarticle.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MainBuilder extends StatefulWidget {
  const MainBuilder({
    super.key,
  });

  @override
  State<MainBuilder> createState() => _MainBuilderState();
}

class _MainBuilderState extends State<MainBuilder> {
  bool isInit = true;
  var futuredata;

  @override
  void initState() {
    futuredata = Provider.of<Articles>(context, listen: false).dataMaster();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context).articleItem;
    final dataMain = data;
    return FutureBuilder(
        future: futuredata,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: LoadingAnimationWidget.twistingDots(
                leftDotColor: warnaUngu,
                rightDotColor: warnaOren,
                size: 50,
              ),
            );
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: dataMain.reversed.toList()[index],
                  child: MainArticle()),
              itemCount: 4,
            );
          }
        });
  }
}
