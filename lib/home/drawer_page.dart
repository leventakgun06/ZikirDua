import 'package:flutter/material.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/views/help_view.dart';
import 'package:zikirdua/widgets/my_text_image.dart';
import 'package:zikirdua/widgets/my_zikir_matik.dart';

import '../constants/constants.dart';
import '../qiblah/qiblah_maps_compass.dart';
import '../views/share_view.dart';
import '../widgets/my_bottom_image.dart';
import '../widgets/my_bottom_text.dart';
import '../widgets/my_left_back_button.dart';
import '../widgets/my_list_button.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return SizedBox(
      width: resp.width * 0.835,
      height: resp.height,
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        child: Stack(
          children: [
            Column(
              children: [
                sizedBoxHeightLarge2x,
                MyTextImage(text: textHeader, image: imgKabe),
                sizedBoxHeightLarge,
                MyListButton(
                  onPressed: () => context.navigateToPage(const HelpView()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.help_outline_outlined),
                      Text(textHelp, style: fontSFProM20),
                    ],
                  ),
                ),
                sizedBoxHeightLow,
                MyListButton(
                  onPressed: () => context.navigateToPage(const ShareView()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.share_outlined),
                      Text(textShare, style: fontSFProM20),
                    ],
                  ),
                ),
                sizedBoxHeightLow,
                MyListButton(
                  onPressed: () => context.navigateToPage(MyZikirMatik(
                    prayerName: '',
                    prayerDescp: '',
                    child: MyLeftBackButton(
                        onPressed: () => context.navigation.pop()),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.workspaces_outline),
                      Text(textZikir, style: fontSFProM20),
                    ],
                  ),
                ),
                sizedBoxHeightLow,
                MyListButton(
                  onPressed: () =>
                      context.navigateToPage(const QiblahMapsCompass()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.explore_outlined),
                      Text(textQibla, style: fontSFProM20),
                    ],
                  ),
                ),
                sizedBoxHeightLow,
              ],
            ),
            MyBottomImage(image: imgRail, width: resp.wp(60)),
            MyBottomText(textTopName: textAppName, textDownName: textVer),
          ],
        ),
      ),
    );
  }
}
