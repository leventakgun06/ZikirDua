import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyTextImage extends StatelessWidget {
  const MyTextImage({super.key, required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text, style: fontSFProM40),
        Image.asset(
          image,
          width: resp.wp(44),
          opacity: const AlwaysStoppedAnimation(.5),
        ),
      ],
    );
  }
}
