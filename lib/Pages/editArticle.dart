import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../providers/articles.dart';

class EditArticle extends StatelessWidget {
  String id;
  EditArticle({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context);
    final dataMain = data.userArticle;
    final selectedArticle = dataMain.firstWhere((element) => element.id == id);

    final TextEditingController titleController =
        TextEditingController(text: selectedArticle.title);
    final TextEditingController descriptionController =
        TextEditingController(text: selectedArticle.description);
    final TextEditingController imageController =
        TextEditingController(text: selectedArticle.image);
    final TextEditingController tagController =
        TextEditingController(text: selectedArticle.category);
    final TextEditingController contentController =
        TextEditingController(text: selectedArticle.content);
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
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    maxLines: null,
                    style: const TextStyle(
                      color: warnaUngu,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      height: 1.5,
                    ),
                    controller: titleController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      labelText: 'Title',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    maxLines: null,
                    style: const TextStyle(
                      color: warnaUngu,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      height: 1.5,
                    ),
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      labelText: 'Description',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    style: const TextStyle(
                      color: warnaUngu,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      height: 1.5,
                    ),
                    controller: imageController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      labelText: 'Image URL',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    maxLines: 1,
                    style: const TextStyle(
                      color: warnaUngu,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      height: 1.5,
                    ),
                    controller: tagController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      labelText: 'Category',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    maxLines: null,
                    style: const TextStyle(
                      color: warnaUngu,
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      height: 1.5,
                    ),
                    controller: contentController,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                      labelText: 'Content',
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FloatingActionButton(
                      backgroundColor: warnaUngu,
                      elevation: 2,
                      onPressed: () {
                        Provider.of<Articles>(context, listen: false).editArtic(
                            id,
                            titleController.text,
                            descriptionController.text,
                            imageController.text,
                            tagController.text,
                            contentController.text);

                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.edit)),
                )
              ],
            ),
          ),
        ));
  }
}
