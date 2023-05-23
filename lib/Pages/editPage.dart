import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:knowpedia/Pages/editArticle.dart';
import 'package:provider/provider.dart';
import 'package:status_alert/status_alert.dart';
import '../Components/colors.dart';
import '../providers/articles.dart';
import '../widgets/dailyInsight.dart';

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
      Provider.of<Articles>(context).profileData();
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
                    child: Column(children: [
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
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (context, index) =>
                              ChangeNotifierProvider.value(
                                  value: dataMain[index],
                                  child: SlidableAutoCloseBehavior(
                                    child: Slidable(
                                        groupTag: 0,
                                        key: Key(index.toString()),
                                        endActionPane: ActionPane(
                                          motion: const DrawerMotion(),
                                          children: [
                                            SlidableAction(
                                              onPressed: (_) => {
                                                data.deleteArt(
                                                    data.userArticle[index].id),
                                                StatusAlert.show(context,
                                                    duration: const Duration(
                                                        seconds: 3),
                                                    title: 'Article Deleted',
                                                    subtitle:
                                                        'Your article has been deleted!',
                                                    configuration:
                                                        const IconConfiguration(
                                                            icon: Icons.delete),
                                                    maxWidth: 260),
                                              },
                                              autoClose: true,
                                              backgroundColor: warnaOren,
                                              foregroundColor: Colors.white,
                                              icon: Icons.delete,
                                              label: 'Delete',
                                            ),
                                            SlidableAction(
                                              onPressed: (_) => {
                                                print(
                                                    data.userArticle[index].id),
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            EditArticle(
                                                                id: data
                                                                    .userArticle[
                                                                        index]
                                                                    .id)))
                                              },
                                              backgroundColor: warnaUngu,
                                              foregroundColor: Colors.white,
                                              icon: Icons.edit,
                                              label: 'Edit',
                                            ),
                                          ],
                                        ),
                                        child: DailyInsight()),
                                  )),
                          itemCount: dataMain.length,
                        ),
                ])))));
  }
}
