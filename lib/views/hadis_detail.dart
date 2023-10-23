import 'package:flutter/material.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/widgets/my_left_back_button.dart';

import '../constants/constants.dart';
import '../widgets/my_bottom_image.dart';

class HadisDetail extends StatelessWidget {
  const HadisDetail(
      {super.key,
      required this.name,
      required this.besmele,
      required this.descp});

  final String name;
  final String besmele;
  final String descp;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          MyLeftBackButton(onPressed: () => context.navigation.pop()),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(besmele, style: fontSFProM34),
                sizedBoxHeightLow,
                Text(name, style: fontSFProM20),
              ],
            ),
          ),
          sizedBoxHeightLow,
          Expanded(
            child: Padding(
              padding: paddingHor,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Text(descp, style: fontSFProM16),
                  MyBottomImage(image: imgRail, width: resp.wp(60)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
