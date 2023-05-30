import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/settings.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:knowpedia/providers/authentication.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../providers/articles.dart';
import '../widgets/profilearticle_builder.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<Articles>(context, listen: false).profileData();
      //Provider.of<Authentication>(context, listen: false).getUserDetail();
      // Provider.of<Articles>(context, listen: false).updateToken(
      //     Provider.of<Authentication>(context, listen: false).tempData());
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final user = Provider.of<Authentication>(context);
    final dataMain = data.userArticle;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: warnaUngu, size: 30),
        centerTitle: true,
        toolbarHeight: 60,
        title: const Text('Profile',
            style: TextStyle(
                color: warnaUngu,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              },
              icon: const Icon(Icons.settings),
              color: warnaUngu,
              iconSize: 20,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5.w, 0, 0, 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 13.w,
                          backgroundImage: NetworkImage(user.userPhoto ??
                              'https://picsum.photos/100/100'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(user.dispName ?? "No Name",
                                  style: const TextStyle(
                                    color: warnaUngu,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: SizedBox(
                                  width: 50.w,
                                  child: Text(user.email ?? "No Email",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      maxLines: 2,
                                      style: const TextStyle(
                                        color: warnaUngu,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        height: 1.5,
                                      )),
                                ),
                              ),

                              // Container(
                              //   height: 15,
                              //   width: 50,
                              //   color: warnaUngu,
                              // )
                            ],
                          ),
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: Text(
                    "Your Articles",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
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
                    : const ProfileArticleBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
