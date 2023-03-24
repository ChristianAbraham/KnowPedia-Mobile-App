import 'package:flutter/material.dart';
import 'package:knowpedia/navbar.dart';
import 'package:knowpedia/Components/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          const SizedBox(
            width: 400,
            child: Image(
              image: AssetImage('assets/images/SignUp.png'),
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 255, left: 20, right: 20),
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
                    hintText: "First Name",
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
                    hintText: "Last Name",
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
                    hintText: "Chris@mail.com",
                    hintStyle: TextStyle(
                        color: warnaOren,
                        fontFamily: "Montserrat",
                        fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                    suffixIcon: Icon(
                      Icons.email_rounded,
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
                      borderSide: BorderSide(color: warnaOren),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: warnaOren,
                        fontFamily: "Montserrat",
                        fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                    suffixIcon: Icon(
                      Icons.key_rounded,
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
                    color: warnaOren,
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      borderSide: BorderSide(color: warnaOren),
                    ),
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                        color: warnaOren,
                        fontFamily: "Montserrat",
                        fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                    suffixIcon: Icon(
                      Icons.key_rounded,
                      color: warnaOren,
                      size: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // push to navbar
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Navbar()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: warnaOren,
                    ),
                    width: 350,
                    height: 65,
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
