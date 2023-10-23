import 'package:flutter/material.dart';
import 'package:zikirdua/constants/constants.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/views/prayer_list.dart';
import 'package:zikirdua/widgets/my_left_back_button.dart';

import '../widgets/my_bottom_image.dart';
import '../widgets/my_zikir_matik.dart';

class PrayerDetail extends StatelessWidget {
  const PrayerDetail(
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
      body: Stack(
        children: [
          Column(
            children: [
              MyLeftBackButton(onPressed: () => context.navigation.pop()),
              sizedBoxHeightLarge,
              _buildImageBesmale(resp, context),
              sizedBoxHeightSmall,
              Text(name, style: fontSFProM20),
              sizedBoxHeightLarge,
              _MyListButton(
                  onPressed: () {
                    context.navigateToPage(MyZikirMatik(
                      prayerDescp: descp,
                      prayerName: name,
                      child: MyLeftBackButton(
                        onPressed: () =>
                            context.navigateToPage(const PrayerList()),
                      ),
                    ));
                  },
                  text: descp),
            ],
          ),
          MyBottomImage(image: imgRail, width: resp.wp(60)),
        ],
      ),
    );
  }

  Widget _buildImageBesmale(Responsive resp, BuildContext context) {
    return Image.asset(imgBesmelem,
        width: resp.wp(90), color: Theme.of(context).colorScheme.primary);
  }
}

class _MyListButton extends StatelessWidget {
  const _MyListButton({
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: paddingLRTB,
        child: Container(
          padding: paddingAll,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1.2, color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.only(
                topRight: radiusSmall, bottomLeft: radiusSmall),
          ),
          child: Center(
            child: Text(text, style: fontSFProM16, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
