import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';
import 'package:knowpedia/main.dart';

void main(List<String> args) {
  runApp(LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Container(
                height: 800,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/LoginPage.png"),
                        fit: BoxFit.cover)),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 500,
                    ),
                    Container(
                      width: 325,
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide:
                                    BorderSide(width: 1.5, color: warnaOren)),
                            hintText: 'Chris@email.com',
                            hintStyle: TextStyle(color: warnaOren)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 325,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide:
                                      BorderSide(width: 1.5, color: warnaOren)),
                              hintText: 'Chris@email.com',
                              hintStyle: TextStyle(color: warnaOren)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
