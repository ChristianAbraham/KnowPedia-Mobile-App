import 'package:flutter/material.dart';
import 'package:knowpedia/widgets/explorewidget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../providers/articles.dart';
import '../widgets/dailyInsight.dart';

class ExploreBuilder extends StatefulWidget {
  const ExploreBuilder({
    super.key,
  });

  @override
  State<ExploreBuilder> createState() => _ExploreBuilderState();
}

class _ExploreBuilderState extends State<ExploreBuilder> {
  bool isInit = true;
  var futuredata;

  @override
  void initState() {
    futuredata = Provider.of<Articles>(context, listen: false).dataMaster();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context).articleItem;
    final dataMain = data.reversed.toList();
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
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: dataMain[index], child: const ExploreArticle()),
              itemCount: dataMain.length,
            );
          }
        });
  }
}
