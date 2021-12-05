import 'package:flutter/material.dart';
import 'package:insta_clone/models/user_model.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UserModel>(
      create: (_) => UserModel(),
      child: Scaffold(
        body: Consumer<UserModel>(builder: (context, model, child) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 40.0),
                  child: const Text(
                    'SIGNUP',
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
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                    onPressed: () async {
                      try {
                        await model.signup();
                      } catch (e) {
                        print(e);
                      }
                    },
                  ),
                ),
                Container(
                  child: TextButton(
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
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
