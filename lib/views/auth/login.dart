import 'package:flutter/material.dart';
import 'package:insta_clone/models/auth_model.dart';
import 'package:provider/provider.dart';

import '../../main.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthModel>(
      create: (_) => AuthModel(),
      child: Scaffold(
        body: Consumer<AuthModel>(builder: (context, model, child) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 40.0),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      letterSpacing: 4.0,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Email',
                    ),
                    cursorColor: Colors.black,
                    onChanged: (text) {
                      model.setEmail(text);
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Password',
                    ),
                    cursorColor: Colors.black,
                    onChanged: (text) {
                      model.setPassword(text);
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  width: double.infinity,
                  height: 45.0,
                  child: ElevatedButton(
                    child: const Text('Log In'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () async {
                      try {
                        await model.login();
                        Navigator.of(context).pop();
                      } catch (e) {
                        print('Error Message');
                      } finally {
                        print('success');
                      }
                    },
                  ),
                ),
                Container(
                  child: TextButton(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, signupRoute);
                    },
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
