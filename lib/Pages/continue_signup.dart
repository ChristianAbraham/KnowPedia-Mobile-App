import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../providers/authentication.dart';

class ContinueSignUp extends StatefulWidget {
  const ContinueSignUp({super.key});

  @override
  State<ContinueSignUp> createState() => _ContinueSignUpState();
}

class _ContinueSignUpState extends State<ContinueSignUp> {
  final usernameController = TextEditingController();
  final photoUrlController = TextEditingController();

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
                      controller: usernameController,
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
                        hintText: "Username",
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
                      controller: photoUrlController,
                      style: const TextStyle(
                        color: warnaUngu,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          borderSide: BorderSide(color: warnaUngu),
                        ),
                        hintText: "Photo URL",
                        hintStyle: TextStyle(
                            color: warnaUngu,
                            fontFamily: "Montserrat",
                            fontSize: 15),
                        contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                        suffixIcon: Icon(
                          Icons.photo_album_rounded,
                          color: warnaUngu,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await authService.updateUserData(
                                usernameController.text,
                                photoUrlController.text);
                            Navigator.pushNamed(context, "/");
                            // LogIn;
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Navbar(0)));
                          },
                          child: Container(
                            height: 8.h,
                            width: 88.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: warnaOren,
                            ),
                            child: const Center(
                              child: Text("Sign Up",
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
