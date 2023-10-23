import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      title: Text(text, style: fontSFProM18),
      trailing: Icon(Icons.chevron_right, size: iconLow),
      onTap: onPressed,
    );
  }
}
