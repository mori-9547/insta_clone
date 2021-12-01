import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedDescription extends StatelessWidget {
  const FeedDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, bottom: 10.0, left: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Text(
              'User ID',
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
                'description description description description daaaaa aaaaaaaaaaaaa bbbbbbbbbbkalhdioa oahdiof'),
          ),
        ],
      ),
    );
  }
}
