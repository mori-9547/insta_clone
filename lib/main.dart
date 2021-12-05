import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/views/auth/login.dart';
import 'package:insta_clone/views/auth/signup.dart';
import 'package:insta_clone/views/layouts/default.dart';
import 'package:insta_clone/views/post/post.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

const String homeRoute = '/';
const String loginRoute = '/login';
const String signupRoute = '/signup';
const String postRoute = '/post';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: loginRoute,
      routes: {
        loginRoute: (context) => const Login(),
        signupRoute: (context) => const Signup(),
        homeRoute: (context) => const Default(),
        postRoute: (context) => const Post(),
      },
    );
  }
}
