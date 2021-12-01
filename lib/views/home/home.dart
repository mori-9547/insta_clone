import 'package:flutter/material.dart';
import 'package:insta_clone/views/home/widgets/feed_bar.dart';
import 'package:insta_clone/views/home/widgets/feed_action.dart';
import 'package:insta_clone/views/home/widgets/feed_description.dart';
import 'package:insta_clone/views/home/widgets/feed_image.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: FeedBar(),
            ),
            Container(
              child: FeedImage(),
            ),
            Container(
              child: FeedAction(),
            ),
            Container(
              child: FeedDescription(),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              child: FeedBar(),
            ),
            Container(
              child: FeedImage(),
            ),
            Container(
              child: FeedAction(),
            ),
            Container(
              child: FeedDescription(),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              child: FeedBar(),
            ),
            Container(
              child: FeedImage(),
            ),
            Container(
              child: FeedAction(),
            ),
            Container(
              child: FeedDescription(),
            ),
          ],
        ),
      ],
    );
  }
}
