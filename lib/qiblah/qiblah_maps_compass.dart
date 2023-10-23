import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:zikirdua/constants/constants.dart';
import 'package:zikirdua/qiblah/qiblah_compass.dart';
import 'package:zikirdua/qiblah/qiblah_maps.dart';

import 'loading_indicator.dart';

class QiblahMapsCompass extends StatefulWidget {
  const QiblahMapsCompass({super.key});

  @override
  State<QiblahMapsCompass> createState() => _QiblahMapsCompassState();
}

class _QiblahMapsCompassState extends State<QiblahMapsCompass> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: _deviceSupport,
        builder: (_, AsyncSnapshot<bool?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return LoadingIndicator();
          if (snapshot.hasError)
            return Center(
              child: Text("$textError: ${snapshot.error.toString()}"),
            );

          if (snapshot.data!)
            return QiblahCompass();
          else
            return QiblahMaps();
        },
      ),
    );
  }
}

