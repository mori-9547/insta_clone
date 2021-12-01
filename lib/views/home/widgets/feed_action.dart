import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedAction extends StatelessWidget {
  const FeedAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: Icon(
              CupertinoIcons.heart,
              color: Colors.black,
            ),
          ),
          Text('104 Like!'),
        ],
      ),
    );
  }
}
