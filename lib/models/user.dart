import 'package:flutter/material.dart';

class UserAttributes with ChangeNotifier {
  String? uid;
  String? email;

  UserAttributes(
    this.uid,
    this.email,
  );
}
