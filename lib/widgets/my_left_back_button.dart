import 'dart:io';

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyLeftBackButton extends StatelessWidget {
  const MyLeftBackButton({super.key, required this.onPressed, this.child});

  final VoidCallback onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive(context);
    return Padding(
      padding:paddingHor,
      child: Row(
        children: [
          Container(
            width: Platform.isAndroid ? resp.wp(10) : resp.wp(10.4),
            height: Platform.isAndroid ? resp.hp(5) : resp.hp(5),
            decoration: BoxDecoration(
              borderRadius: borderRadiusLarge,
              color: Theme.of(context).colorScheme.secondary,
              border: Border.all(color: Theme.of(context).colorScheme.primary),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.primary,
                size: iconLow,
              ),
            ),
          ),
          child ?? const Center(),
        ],
      ),
    );
  }
}
