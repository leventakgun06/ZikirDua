import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key, required this.onPressed, required this.child})
      : super(key: key);

  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: radiusSmall,
              bottomLeft: radiusSmall,
            ),
            side: BorderSide(),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
