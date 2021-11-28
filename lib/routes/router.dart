import 'package:flutter/material.dart';
import 'package:insta_clone/layouts/auth.dart';
import 'package:insta_clone/layouts/default.dart';

const String homeRoute = '/';
const String loginRoute = '/login';
const String signupRoute = '/signup';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginRoute:
        return MaterialPageRoute(builder: (_) => Auth());
      case signupRoute:
        return MaterialPageRoute(builder: (_) => Auth());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Default());
      default:
        return MaterialPageRoute(builder: (_) => Default());
    }
  }
}
