import 'package:flutter/material.dart';
import 'package:knowpedia/Components/colors.dart';
import 'package:provider/provider.dart';
import '../providers/authentication.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  bool confirmPassword() {
    if (passwordController == confirmPasswordController) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<Authentication>(context);
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
                padding: EdgeInsets.fromLTRB(20, 350, 20, 0),
                child: Text("Create A New Account ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: warnaUngu,
                        fontFamily: "Montserrat",
                        fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
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
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
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
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: warnaUngu,
                        fontFamily: "Montserrat",
                        fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                    suffixIcon: Icon(
                      Icons.lock_rounded,
                      color: warnaUngu,
                      size: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: TextField(
                  controller: confirmPasswordController,
                  obscureText: true,
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
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(
                        color: warnaUngu,
                        fontFamily: "Montserrat",
                        fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20, 22, 0, 22),
                    suffixIcon: Icon(
                      Icons.lock_rounded,
                      color: warnaUngu,
                      size: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  await authService.registerWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                      firstNameController.text,
                      lastNameController.text);
                  if (confirmPassword() == true) {}
                  Navigator.pushNamed(context, '/continueregister');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(
                            color: warnaOren,
                            fontFamily: "Montserrat",
                            fontSize: 15)),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: const Text("Sign In",
                          style: TextStyle(
                              color: warnaUngu,
                              fontFamily: "Montserrat",
                              fontSize: 15)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
