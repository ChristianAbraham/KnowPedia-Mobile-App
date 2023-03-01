import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';
import 'package:knowpedia/main.dart';

void main(List<String> args) {
  runApp(const LoginScreen());
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
                        image: AssetImage("assets/images/Login.png"),
                        fit: BoxFit.cover)),
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 475,
                    ),
                    SizedBox(
                      width: 325,
                      child: TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: const BorderSide(
                                    width: 1.5, color: warnaOren)),
                            hintText: 'Chris@email.com',
                            hintStyle: const TextStyle(color: warnaOren),
                            // ignore: prefer_const_constructors
                            suffixIcon: Icon(
                              Icons.person_2_rounded,
                              color: warnaOren,
                              size: 18,
                            )),
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
                                  borderSide: const BorderSide(
                                      width: 1.5, color: warnaUngu)),
                              hintText: 'Password',
                              hintStyle: const TextStyle(color: warnaUngu),
                              // ignore: prefer_const_constructors
                              suffixIcon: Icon(
                                Icons.key_rounded,
                                color: warnaUngu,
                                size: 18,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            disabledForegroundColor:
                                warnaOren.withOpacity(0.50),
                          ),
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: warnaOren.withOpacity(0.90),
                              decorationThickness: 1,
                            ),
                          ),
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
