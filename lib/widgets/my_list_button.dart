import 'dart:io';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class MyListButton extends StatelessWidget {
  const MyListButton({
    required this.onPressed,
    this.child,
  });

  final VoidCallback onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: Platform.isAndroid ? resp.wp(46) : resp.wp(42),
        height: Platform.isAndroid ? resp.hp(8) : resp.hp(7.6),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                width: 1.2, color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.only(
              topRight: radiusSmall,
              bottomLeft: radiusSmall,
            ),
          ),
          child: Center(child: child ?? Center()),
        ),
      ),
    );
  }
}
