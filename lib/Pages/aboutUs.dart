import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    final appHeight = MediaQuery.of(context).size.height;
    final myAppBar = AppBar(
      iconTheme: const IconThemeData(color: warnaUngu, size: 30),
      toolbarHeight: 75,
      title: const Text(
        'About Us',
        style: TextStyle(
            color: warnaUngu,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
    );

    final bodyHeight = appHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: myAppBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: bodyHeight * 0.2,
                    width: appWidth * 0.8,
                    child: Image.asset("assets/images/Logo-KnowPedia..png")),
                SizedBox(height: bodyHeight * 0.05),
                Container(
                  height: bodyHeight * 0.5,
                  width: appWidth * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
                SizedBox(height: bodyHeight * 0.02),
                Container(
                  height: bodyHeight * 0.5,
                  width: appWidth * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
