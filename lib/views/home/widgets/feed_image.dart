import 'package:flutter/material.dart';

class FeedImage extends StatelessWidget {
  const FeedImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
      ),
    );
  }
}
