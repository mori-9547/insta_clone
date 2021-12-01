import 'package:flutter/material.dart';
import 'package:insta_clone/views/account/profile.dart';
import 'package:insta_clone/views/history/history.dart';
import 'package:insta_clone/views/home/home.dart';
import 'package:insta_clone/views/layouts/auth.dart';
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
        return MaterialPageRoute(builder: (_) => Auth());
      case signupRoute:
        return MaterialPageRoute(builder: (_) => Auth());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Default());
      case postRoute:
        return MaterialPageRoute(
          builder: (_) => Post(),
          fullscreenDialog: true,
        );
      default:
        return MaterialPageRoute(builder: (_) => Default());
    }
  }
}
