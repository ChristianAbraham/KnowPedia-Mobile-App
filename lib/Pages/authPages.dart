// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart' as package;
// import 'package:knowpedia/navbar.dart';
// import '../providers/auth.dart';
// import 'package:provider/provider.dart';

// // import './home_page.dart';

// const users = {
//   'dribbble@gmail.com': '12345',
//   'hunter@gmail.com': 'hunter',
// };

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   Duration get loginTime => Duration(milliseconds: 2250);

//   Future<String?> _authUserSignUp(package.LoginData data) {
//     print('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) async {
//       try {
//         await Provider.of<Auth>(context, listen: false)
//             .signup(data.name, data.password);
//       } catch (err) {
//         return err.toString();
//       }
//       return null;
//     });
//   }

//   Future<String?> _authUserLogin(package.LoginData data) {
//     print('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) async {
//       try {
//         await Provider.of<Auth>(context, listen: false)
//             .login(data.name, data.password);
//       } catch (err) {
//         return err.toString();
//       }
//       return null;
//     });
//   }

//   Future<String?> _authUser(package.LoginData data) {
//     print('Name: ${data.name}, Password: ${data.password}');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(data.name)) {
//         return 'Username not exists';
//       }
//       if (users[data.name] != data.password) {
//         return 'Password does not match';
//       }
//       return null;
//     });
//   }

//   Future<String?> _recoverPassword(String name) {
//     print('Name: $name');
//     return Future.delayed(loginTime).then((_) {
//       if (!users.containsKey(name)) {
//         return 'Username not exists';
//       }
//       return null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return package.FlutterLogin(
//       title: 'KnowPedia',
//       // logo: 'assets/images/ecorp-lightblue.png',
//       onLogin: _authUserLogin,
//       onSignup: _authUserSignUp,
//       onSubmitAnimationCompleted: () {
//         Navigator.of(context).pushReplacement(MaterialPageRoute(
//           builder: (context) => Navbar(0),
//         ));
//       },
//       onRecoverPassword: _recoverPassword,
//     );
//   }
// }
