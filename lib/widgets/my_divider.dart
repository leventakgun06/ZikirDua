import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1.5,
      indent: kDefaultSpacing - 20,
      endIndent: kDefaultSpacing - 15,
    );
  }
}
