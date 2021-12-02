import 'package:flutter/material.dart';
import 'package:insta_clone/components/inputs/input_text.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              child: InputText(hintText: 'Email'),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              child: InputText(hintText: 'Password'),
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
                onPressed: () {
                  print('test');
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
      ),
    );
  }
}
