import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:knowpedia/models/user.dart';
import 'package:knowpedia/models/userdetails.dart';

class Authentication with ChangeNotifier {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  String tempToken = "";
  String token = "";
  String uid = "";
  var dispName;
  var userPhoto;
  var email;

  List<UserDetails> detail = [];

  String get userid {
    return uid;
  }

  String tempData() {
    refreshToken();
    token = tempToken;
    //print(token);
    return token;
  }

  Future<void> refreshToken() async {
    tempToken = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    token = tempToken;
  }

  UserAttributes? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return UserAttributes(user.uid, user.email);
  }

  Stream<UserAttributes?> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  Future<UserAttributes?> signInWithEmailAndPassword(
      String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    //final auth.User? user = credential.user;
    tempToken = await FirebaseAuth.instance.currentUser!.getIdToken(true);
    //FirebaseAuth.instance.currentUser!.
    uid = credential.user!.uid;
    getUserDetail();
    notifyListeners();

    return _userFromFirebase(credential.user);
  }

  Future<UserAttributes?> registerWithEmailAndPassword(
      String email, String password, String firstName, String lastName) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      //var responseData = json.decode(credential.toString());

      tempToken = await FirebaseAuth.instance.currentUser!.getIdToken(true);
      uid = credential.user!.uid;
      notifyListeners();

      return _userFromFirebase(credential.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<UserAttributes?> updateUserData(
      String displayName, String photoURL) async {
    await FirebaseAuth.instance.currentUser!.updateDisplayName(displayName);
    await FirebaseAuth.instance.currentUser!.updatePhotoURL(photoURL);
    await FirebaseAuth.instance.currentUser!.reload();
    getUserDetail();
    notifyListeners();
    return null;
  }

  // Future addUserDetail(
  //     String firstName, String lastName, String email, String uid) async {
  //   Uri url = Uri.parse(
  //       "https://knowpedia-df445-default-rtdb.asia-southeast1.firebasedatabase.app/users.json?auth=$token");

  //   http.post(
  //     url,
  //     body: json.encode(
  //       {
  //         "uid": uid,
  //         "email": email,
  //         "firstName": firstName,
  //         "lastName": lastName,
  //       },
  //     ),
  //   );
  // }

  Future<void> getUserDetail() async {
    dispName = FirebaseAuth.instance.currentUser!.displayName;
    userPhoto = FirebaseAuth.instance.currentUser!.photoURL;
    email = FirebaseAuth.instance.currentUser!.email;
    notifyListeners();
  }

  Future<void> signOut() async {
    await _auth.signOut();
    //Navigator.popUntil(context, ModalRoute.withName("/"));
  }
}
