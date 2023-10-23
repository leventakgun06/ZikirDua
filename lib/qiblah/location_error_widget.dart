import 'package:flutter/material.dart';
import 'package:zikirdua/constants/constants.dart';

class LocationErrorWidget extends StatelessWidget {
  const LocationErrorWidget({Key? key, this.error, this.callback})
      : super(key: key);

  final String? error;
  final Function? callback;

  @override
  Widget build(BuildContext context) {
    final errorColor = const Color(0xffb00020);

    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.location_off, size: iconLargeX, color: errorColor),
            sizedBoxHeightMedium,
            Text(error!, style: fontSFProBR16),
            sizedBoxHeightMedium,
            ElevatedButton(
              child: const Text(textRetry),
              onPressed: () {
                if (callback != null) callback!();
              },
            )
          ],
        ),
      ),
    );
  }
}
