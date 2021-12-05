import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {
  String? email;
  String? password;

  void setEmail(String email) {
    this.email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    this.password = password;
    notifyListeners();
  }

  Future<void> login() async {
    if (email != null && password != null) {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
    }
  }
}
