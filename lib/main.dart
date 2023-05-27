import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:knowpedia/Pages/continue_signup.dart';
import 'package:knowpedia/Pages/signup.dart';
import 'package:knowpedia/providers/articles.dart';
import 'package:knowpedia/providers/authentication.dart';
import 'package:knowpedia/providers/favoriteservice.dart';
import 'package:knowpedia/wrapper.dart';
import 'package:provider/provider.dart';
import 'Pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Authentication()),
        ChangeNotifierProxyProvider<Authentication, Articles>(
            create: (context) => Articles(),
            update: (context, authentication, articles) => articles!
              ..updateToken(authentication.tempData(), authentication.userid)),
        ChangeNotifierProvider(create: (context) => Favorites()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(primarySwatch: Colors.purple),
          initialRoute: '/',
          routes: {
            '/': (context) => const Wrapper(),
            '/login': (context) => LoginScreen(),
            '/register': (context) => SignUp(),
            '/continueregister': (context) => ContinueSignUp(),
          }),
    );
  }
}
