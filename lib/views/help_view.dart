import 'package:flutter/material.dart';
import 'package:zikirdua/constants/constants.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/widgets/my_guide_lines.dart';
import 'package:zikirdua/widgets/my_left_back_button.dart';

import '../widgets/my_bottom_text.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          MyLeftBackButton(onPressed: () => context.navigation.pop()),
          Text(textHelp, style: fontSFProM34),
          const Expanded(child: MyGuidelines()),
          SizedBox(
            height: resp.hp(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyBottomText(textTopName: textAppName, textDownName: textVer),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
