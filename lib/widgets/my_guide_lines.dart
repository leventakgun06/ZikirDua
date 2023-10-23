import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/constants.dart';

class MyGuidelines extends StatelessWidget {
  const MyGuidelines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url =
        Uri.parse("https://kikirim.blogspot.com/p/zikir-dualar.html");
    final Uri urls =
        Uri.parse("https://sites.google.com/view/enguzeldualarim/ana-sayfa");
    return Container(
      margin: paddingHor,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const MyGuideContainer(
            guideNo: 1,
            text: textPrayerAbout,
            guideDescription: textPrayerDescp,
          ),
          sizedBoxHeightLow,
          MyGuideContainer(
            text: textPrayerFeed,
            guideNo: 2,
            guideDescription:
                Platform.isAndroid ? textPrayerGoogle : textPrayerAppStore,
          ),
          sizedBoxHeightLow,
          MyGuideContainer(
            guideNo: 3,
            text: textErrorInfo,
            guideDescription: textThisLiving,
            child: _MyTextButton(
              onPressed: () => launchUrl(url),
              child: Text(textErrorReport, style: fontSFProM18),
            ),
          ),
          sizedBoxHeightLow,
          MyGuideContainer(
            guideNo: 4,
            text: textCurrentCode,
            guideDescription: textLicences,
            child: _MyTextButton(
              onPressed: () => launchUrl(urls),
              child: Text(textHidden, style: fontSFProM18),
            ),
          ),
          sizedBoxHeightLow,
          MyGuideContainer(
            guideNo: 5,
            text: textDevelopInfo,
            child: _myDevelopInfo(),
          ),
          sizedBoxHeightLow,
        ],
      ),
    );
  }

  _myDevelopInfo() {
    return Column(
      children: [
        Text(textDevelopName, style: fontSFProR16),
        Text(textDevelopEmail, style: fontSFProR16),
        Text(textDevelopWebsite, style: fontSFProR16),
      ],
    );
  }
}

class _MyTextButton extends StatelessWidget {
  const _MyTextButton({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  final Widget child;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive(context);
    return Padding(
      padding: paddingVer,
      child: SizedBox(
        width: resp.wp(36),
        height: resp.hp(6),
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: radiusSmall,
                  bottomLeft: radiusSmall,
                ),
                side: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}

class MyGuideContainer extends StatelessWidget {
  const MyGuideContainer({
    Key? key,
    required this.guideNo,
    this.text,
    this.guideDescription,
    this.child,
  }) : super(key: key);

  final String? text;
  final String? guideDescription;
  final int guideNo;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "\n$guideNo. $text",
          style: fontSFProM20,
        ),
        Text(
          guideDescription ?? '',
          textAlign: TextAlign.center,
          style: fontSFProR16,
        ),
        child ?? const Center(),
      ],
    );
  }
}
