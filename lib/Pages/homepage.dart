import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';
import '../Components/user_appbar.dart';
import '../providers/authentication.dart';
import '../widgets/dailyinsight_builder.dart';
import '../widgets/mainarticle_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 95,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: UserAppbar(),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
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
                child: MainBuilder(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Text("Daily Insight",
                    style: TextStyle(
                        color: warnaUngu,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat")),
              ),
              DailyBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
