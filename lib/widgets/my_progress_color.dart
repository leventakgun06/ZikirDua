import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zikirdua/constants/constants.dart';

class MyProgressColor extends StatefulWidget {
  const MyProgressColor({Key? key, required this.progress}) : super(key: key);

  final double progress;

  @override
  State<MyProgressColor> createState() => _MyProgressColorState();
}

class _MyProgressColorState extends State<MyProgressColor> {
  _currentProgressColor() {
    if (widget.progress >= 0.0 && widget.progress < 0.1) {
      return colorOrange;
    }
    if (widget.progress >= 0.3 && widget.progress < 0.5) {
      return colorBlue;
    }
    if (widget.progress >= 0.8) {
      return colorRed;
    } else {
      return colorGreen;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return CircularPercentIndicator(
      radius: resp.hp(16),
      lineWidth: resp.wp(3),
      animation: true,
      animationDuration: 3000,
      percent: widget.progress,
      animateFromLastPercent: true,
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      progressColor: _currentProgressColor(),
      circularStrokeCap: CircularStrokeCap.round,
      center: Text(widget.progress.toString(), style: fontSFProM40),
      widgetIndicator: RotatedBox(
        quarterTurns: 1,
        child: Image.asset(
          imgAirplane,
          width: resp.wp(30),
          height: resp.hp(30),
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
