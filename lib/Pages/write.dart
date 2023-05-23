import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/createArticle.dart';
import '../Components/colors.dart';
import 'editPage.dart';

class Write extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 75,
        title: const Text('Write',
            style: TextStyle(
                color: warnaUngu,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateArticle()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.add_box_rounded,
                color: warnaUngu,
              ),
              title: Text("Write A new Article",
                  style: TextStyle(
                      color: warnaUngu,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat")),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EditPage()));
            },
            child: const ListTile(
              leading: Icon(
                Icons.edit,
                color: warnaUngu,
              ),
              title: Text("Edit Your Article",
                  style: TextStyle(
                      color: warnaUngu,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat")),
            ),
          ),
        ],
      ),
    );
  }
}
