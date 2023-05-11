import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/settings.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';
import '../providers/articles.dart';
import '../widgets/dailyInsight.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final dataMain = data.articleItem;

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
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              NetworkImage('https://picsum.photos/100/100'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Christian Abraham',
                                  style: TextStyle(
                                    color: warnaUngu,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                              Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: SizedBox(
                                  width: 230,
                                  child: Text(
                                      'Ya ini adalah bio saya, saya seorang yang bisa ngoding flutter',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      maxLines: 2,
                                      style: TextStyle(
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
                    "Latest Articles",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) => ChangeNotifierProvider.value(
                      value: dataMain[index + 3], child: DailyInsight()),
                  itemCount: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
