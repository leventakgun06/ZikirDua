import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyBottomText extends StatelessWidget {
  const MyBottomText({
    Key? key,
    required this.textTopName,
    required this.textDownName,
  }) : super(key: key);

  final String textTopName;
  final String textDownName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Text(textTopName,
              style: fontSFProR16, textAlign: TextAlign.center),
        ),
        Center(
          child: Text(textDownName, style: fontSFProR16),
        ),
        sizedBoxHeightLow,
      ],
    );
  }
}
