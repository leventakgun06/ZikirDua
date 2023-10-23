import 'dart:io' show sleep;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/constants.dart';
import 'my_progress_color.dart';

class MyZikirMatik extends StatefulWidget {
  const MyZikirMatik({
    Key? key,
    required this.prayerName,
    required this.prayerDescp,
    required this.child,
  }) : super(key: key);

  final String prayerName;
  final String prayerDescp;
  final Widget child;

  @override
  State<MyZikirMatik> createState() => _MyZikirMatikState();
}

class _MyZikirMatikState extends State<MyZikirMatik> {
  _patternVibrate() {
    HapticFeedback.mediumImpact();

    sleep(
      const Duration(milliseconds: 100),
    );
  }

  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          widget.child,
          sizedBoxHeightSmall,
          Text(textZikirm, style: fontSFProM34),
          sizedBoxHeightLow,
          _buildExportPrayer(resp),
          sizedBoxHeightLarge,
          MyProgressColor(progress: progress),
          sizedBoxHeightLarge,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ElevatedButton(
                text: textRetry,
                onPressed: () {
                  final updated = ((progress = 0.0).clamp(0.0, 0.0) * 100);
                  setState(() {
                    progress = updated.round() / 100;
                  });
                },
              ),
              _ElevatedButton(
                  onPressed: () {
                    final updated = ((progress + 0.01).clamp(0.0, 1.0) * 100);
                    setState(() {
                      progress = updated.round() / 100;
                      _patternVibrate();
                    });
                  },
                  text: textStart),
            ],
          ),
        ],
      ),
    );
  }

  _buildExportPrayer(Responsive resp) {
    return Padding(
      padding: paddingHor,
      child: Column(
        children: [
          Text(widget.prayerName, style: fontSFProM20),
          sizedBoxHeightLow,
          Text(widget.prayerDescp,
              style: fontSFProM16, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _ElevatedButton extends StatelessWidget {
  const _ElevatedButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return SizedBox(
      width: resp.wp(34),
      height: resp.hp(7),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: radiusSmall,
              bottomLeft: radiusSmall,
            ),
            side: const BorderSide(width: 1.2),
          ),
        ),
        child: Center(
          child: Text(text, style: fontSFProM20),
        ),
      ),
    );
  }
}
