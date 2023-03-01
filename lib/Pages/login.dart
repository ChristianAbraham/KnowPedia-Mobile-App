import 'package:flutter/material.dart';
import 'package:knowpedia/Components/searchbar.dart';
import 'package:knowpedia/Pages/signup.dart';
import 'package:knowpedia/main.dart';
import 'package:knowpedia/navbar.dart';

const Color warnaUngu = Color.fromARGB(255, 75, 38, 72);
const Color warnaOren = Color.fromARGB(255, 239, 140, 51);

void main(List<String> args) {
  runApp(const LoginScreen());
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const Padding(
                    padding: EdgeInsets.only(top: 500, left: 20, right: 20),
                    child: TextField(
                      style: TextStyle(
                        color: warnaUngu,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
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
                  const Padding(
                    padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                        color: warnaUngu,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: warnaUngu),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: warnaUngu,
                            fontFamily: "Montserrat",
                            fontSize: 15),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                        suffixIcon: Icon(
                          Icons.key_rounded,
                          color: warnaUngu,
                          size: 18,
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
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Navbar()));
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
