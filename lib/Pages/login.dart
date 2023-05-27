import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/signup.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';

import '../providers/authentication.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<Authentication>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 500, left: 20, right: 20),
                    child: TextField(
                      controller: emailController,
                      style: const TextStyle(
                        color: warnaUngu,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: warnaOren),
                        ),
                        hintText: "chris@email.com",
                        hintStyle: TextStyle(
                            color: warnaOren,
                            fontFamily: "Montserrat",
                            fontSize: 15),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                        suffixIcon: Icon(
                          Icons.person_2_rounded,
                          color: warnaOren,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: TextField(
                      controller: passwordController,
                      obscureText: _isHidden,
                      style: const TextStyle(
                        color: warnaUngu,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: warnaUngu),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            color: warnaUngu,
                            fontFamily: "Montserrat",
                            fontSize: 15),
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 22, 0, 22),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _toggleVisibility();
                            });
                          },
                          child: Icon(
                            _isHidden
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: warnaUngu,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: 330,
                      child: Text(
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: warnaUngu,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: warnaOren),
                            ),
                            child: const Center(
                              child: Text("Sign Up",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: warnaOren,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            try {
                              await authService
                                  .signInWithEmailAndPassword(
                                      emailController.text,
                                      passwordController.text)
                                  .then((value) => authService.tempData());
                            } on FirebaseAuthException catch (err) {
                              String? errMessage = err.message;

                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    title: const Text('Login Failed'),
                                    content: Text(
                                      errMessage!,
                                      style: const TextStyle(
                                          fontFamily: 'Montserrat'),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Okay',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat')),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          child: Container(
                            height: 60,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: warnaOren,
                            ),
                            child: const Center(
                              child: Text("Log In",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
