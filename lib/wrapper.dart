import 'package:flutter/material.dart';
import 'package:knowpedia/models/user.dart';
import 'package:knowpedia/navbar.dart';
import 'package:knowpedia/providers/authentication.dart';
import 'package:provider/provider.dart';
import 'Pages/login.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<Authentication>(context);
    return StreamBuilder<UserAttributes?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<UserAttributes?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final UserAttributes? user = snapshot.data;
          return user == null ? LoginScreen() : Navbar(0);
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
