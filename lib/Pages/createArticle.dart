import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Components/colors.dart';
import '../providers/articles.dart';
import 'package:status_alert/status_alert.dart';

class CreateArticle extends StatelessWidget {
  CreateArticle({Key? key}) : super(key: key);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController tagController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

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
                        Provider.of<Articles>(context, listen: false)
                            .addArticle(
                                titleController.text,
                                descriptionController.text,
                                imageController.text,
                                "Christian",
                                tagController.text,
                                contentController.text);
                        StatusAlert.show(
                          context,
                          duration: const Duration(seconds: 3),
                          title: 'Article Created',
                          subtitle:
                              'Yay your article has been created and uploaded!',
                          configuration:
                              const IconConfiguration(icon: Icons.done),
                          maxWidth: 260,
                        );
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.add_box_rounded)),
                )
              ],
            ),
          ),
        ));
  }
}
