import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:knowpedia/Pages/edit_article.dart';
import 'package:knowpedia/models/article.dart';
import 'package:provider/provider.dart';
import 'package:status_alert/status_alert.dart';
import '../Components/colors.dart';
import '../providers/articles.dart';
import '../widgets/dailyInsight.dart';
import '../widgets/editlist_builder.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<Articles>(context, listen: false).profileData();
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final dataMain = data.userArticle;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 75,
        title: const Text('Edit',
            style: TextStyle(
                color: warnaUngu,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat")),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                (dataMain.isEmpty)
                    ? const Center(
                        child: Text(
                          "You haven't post any article yet",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                      )
                    : EditListBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
