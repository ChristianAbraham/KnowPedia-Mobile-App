import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:knowpedia/navbar.dart';
import 'package:provider/provider.dart';
import '../providers/authentication.dart';
import '../widgets/dailyinsight.dart';
import '../widgets/mainarticle.dart';
import '../providers/articles.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isInit = true;
  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<Articles>(context, listen: false).dataMaster();
      // Provider.of<Articles>(context, listen: false).updateToken(
      //     Provider.of<Authentication>(context, listen: false).tempData());
    }
    isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final userinfo = Provider.of<Authentication>(context);
    final dataMain = data.articleItem;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 95,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                      child: Text("Hello!",
                          style: TextStyle(
                              color: warnaUngu,
                              fontSize: 19,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700)),
                    ),
                    Text("Chris", //userinfo.detail[0].firstName,
                        style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 32,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: const CircleBorder(),
                    elevation: 0,
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage("https://picsum.photos/130/130"),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Navbar(4)));
                  },
                ),
              ],
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20, top: 10),
                child: Text("Main Article",
                    style: TextStyle(
                        color: warnaUngu,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat")),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ChangeNotifierProvider.value(
                      value: dataMain.reversed.toList()[index],
                      child: MainArticle()),
                  itemCount: 4,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Text("Daily Insight",
                    style: TextStyle(
                        color: warnaUngu,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat")),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) => ChangeNotifierProvider.value(
                      value: dataMain[index], child: DailyInsight()),
                  itemCount: 6),
            ],
          ),
        ),
      ),
    );
  }
}
