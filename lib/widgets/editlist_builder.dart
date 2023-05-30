import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../Pages/edit_article.dart';
import '../providers/articles.dart';
import 'dailyInsight.dart';

class EditListBuilder extends StatefulWidget {
  const EditListBuilder({
    super.key,
  });

  @override
  State<EditListBuilder> createState() => _EditListBuilderState();
}

class _EditListBuilderState extends State<EditListBuilder> {
  bool isInit = true;
  var futuredata;

  @override
  void initState() {
    futuredata = Provider.of<Articles>(context, listen: false).profileData();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final dataMain = data.userArticle;

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
                  value: dataMain[index],
                  child: SlidableAutoCloseBehavior(
                    child: Slidable(
                        groupTag: 0,
                        key: Key(index.toString()),
                        endActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (_) {
                                print(dataMain[index].id);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        EditArticle(id: dataMain[index].id),
                                  ),
                                ).then((value) => setState(() {
                                      initState();
                                    }));
                              },
                              backgroundColor: warnaUngu,
                              foregroundColor: Colors.white,
                              icon: Icons.edit,
                              label: 'Edit',
                            ),
                            SlidableAction(
                              onPressed: (_) => {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        title: const Text('Delete Article'),
                                        content: Text(
                                          'Are you sure you want delete ${dataMain[index].title}?',
                                          style: const TextStyle(
                                              fontFamily: 'Montserrat'),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Cancel',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat')),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              data.deleteArt(
                                                  dataMain[index].id);
                                              Navigator.pop(context);
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                /// need to set following properties for best effect of awesome_snackbar_content
                                                elevation: 0,
                                                behavior:
                                                    SnackBarBehavior.floating,
                                                backgroundColor:
                                                    Colors.transparent,
                                                content: AwesomeSnackbarContent(
                                                  title: 'Hey!',
                                                  message:
                                                      'Your Article Has Been Deleted!',

                                                  /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                                  contentType:
                                                      ContentType.warning,
                                                  inMaterialBanner: true,
                                                ),
                                              ));
                                            },
                                            child: const Text('Delete',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat')),
                                          ),
                                        ],
                                      );
                                    })
                              },
                              autoClose: true,
                              backgroundColor: warnaOren,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                          ],
                        ),
                        child: const DailyInsight()),
                  )),
              itemCount: dataMain.length,
            );
          }
        });
  }
}
