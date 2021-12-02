import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_clone/views/account/profile.dart';
import 'package:insta_clone/views/auth/login.dart';
import 'package:insta_clone/views/auth/signup.dart';
import 'package:insta_clone/views/history/history.dart';
import 'package:insta_clone/views/home/home.dart';
import 'package:insta_clone/views/layouts/default.dart';
import 'package:insta_clone/views/post/post.dart';
import 'package:insta_clone/views/search/search.dart';

const String homeRoute = '/';
const String loginRoute = '/login';
const String signupRoute = '/signup';
const String postRoute = '/post';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return CupertinoPageRoute(builder: (_) => const Login());
      case signupRoute:
        return CupertinoPageRoute(builder: (_) => const Signup());
      case homeRoute:
        return CupertinoPageRoute(builder: (_) => Default());
      case postRoute:
        return MaterialPageRoute(
          builder: (_) => Post(),
          fullscreenDialog: true,
        );
      default:
        return CupertinoPageRoute(builder: (_) => const Login());
    }
  }
}
