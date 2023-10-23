import 'package:flutter/material.dart';

class MyBottomImage extends StatelessWidget {
  const MyBottomImage({super.key, required this.image, required this.width});

  final String image;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Image.asset(
        image,
        width: width,
        opacity: const AlwaysStoppedAnimation(.5),
      ),
    );
  }
}