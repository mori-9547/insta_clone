import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
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

  Future<void> signup() async {
    final userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
    final user = userCredential.user;
    if (user != null) {
      final uid = user.uid;
      final doc = FirebaseFirestore.instance.collection('users').doc(uid);
      await doc.set({
        'uid': uid,
        'email': email,
      });
    }
  }
}
