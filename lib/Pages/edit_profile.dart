import 'package:flutter/material.dart';
import 'package:knowpedia/providers/authentication.dart';
import 'package:provider/provider.dart';

import '../Components/colors.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<Authentication>(context);
    final userNameController = TextEditingController(text: user.dispName);
    final photoUrlController = TextEditingController(text: user.userPhoto);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 75,
        title: const Text('Edit Profile',
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
                  controller: userNameController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelText: 'Username',
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
                  controller: photoUrlController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    labelText: 'Photo URL',
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
                      Provider.of<Authentication>(context, listen: false)
                          .updateUserData(
                              userNameController.text, photoUrlController.text);
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.edit)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
