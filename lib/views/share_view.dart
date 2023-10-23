import 'dart:io';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zikirdua/constants/constants.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/widgets/my_bottom_text.dart';

import '../widgets/my_left_back_button.dart';

class ShareView extends StatelessWidget {
  const ShareView({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive(context);

    final Uri url = Uri.parse("https://github.com/kikirim-rn/zikir_dua");
    final Uri urlAnd = Uri.parse("https://play.google.com/store/apps/details?id=com.leventakgun06.zikirdua");
    final Uri urlIos = Uri.parse("https://apps.apple.com/us/app/zikirdua/id1535629222");

    String text = Platform.isAndroid
        ? "Play Store'daki ZikirDua Uygulamasını indirin. :)\n\n"
        "https://play.google.com/store/apps/details?id=com.leventakgun06.zikirdua \n\nDaha Fazlasını Paylaşın! :)"
        : "App Store'daki ZikirDua Uygulamasını indirin. :)\n\n"
        "https://apps.apple.com/us/app/zikirdua/id1535629222 \n\nDaha Fazlasını Paylaşın! :)";

    void _onShare(BuildContext context) async {
      final box = context.findRenderObject() as RenderBox?;

      await Share.share(text, sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    }

    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          MyLeftBackButton(onPressed: () => context.navigation.pop()),
          Text(textShare, style: fontSFProM34),
          sizedBoxHeightLarge,
          Image.asset(imgBesmelem, width: resp.wp(80), color: Theme.of(context).colorScheme.primary),
          sizedBoxHeightSmall,
          Text(textGitHub, style: fontSFProM18, textAlign: TextAlign.center),
          sizedBoxHeightLarge1x,
          _AppElevatedButton(
            onPressed: () => launchUrl(url),
            imgName: imgGithubImg,
            text: textGitHubIcon,
          ),
          sizedBoxHeightLow,
          _AppElevatedButton(
            onPressed: () => _onShare(context),
            imgName: imgShare,
            text: textShare,
          ),
          sizedBoxHeightLow,
          _AppElevatedButton(
            onPressed: () => Platform.isAndroid ? launchUrl(urlAnd) : launchUrl(urlIos),
            imgName: Platform.isAndroid ? imgPlay : imgAppstore,
            text: textFeedPoint,
          ),
          sizedBoxHeightLarge2x,
          MyBottomText(textTopName: textAppName, textDownName: textVer),
        ],
      ),
    );
  }
}

class _AppElevatedButton extends StatelessWidget {
  const _AppElevatedButton({
    Key? key,
    this.onPressed,
    required this.imgName,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onPressed;

  final String imgName;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive(context);
    return SizedBox(
      width: resp.wp(50),
      height: resp.hp(8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: radiusSmall,
              bottomLeft: radiusSmall,
            ),
            side: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imgName,
              width: resp.wp(8),
              color: Theme.of(context).colorScheme.primary,
            ),
            Text(text, style: fontSFProM20),
            Icon(Icons.circle_outlined, color: Theme.of(context).colorScheme.secondary),
          ],
        ),
      ),
    );
  }
}
