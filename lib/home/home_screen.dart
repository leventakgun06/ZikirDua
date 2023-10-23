import 'package:flutter/material.dart';
import 'package:zikirdua/constants/constants.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/views/esmaul_husna.dart';
import 'package:zikirdua/views/hadis_list.dart';
import 'package:zikirdua/views/prayer_list.dart';
import 'package:zikirdua/widgets/my_bottom_text.dart';
import 'package:zikirdua/widgets/my_left_back_button.dart';
import 'package:zikirdua/widgets/my_list_button.dart';
import 'package:zikirdua/widgets/my_text_image.dart';
import 'package:zikirdua/widgets/my_zikir_matik.dart';

import '../widgets/my_bottom_image.dart';
import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Stack(
        children: [
          Column(
            children: [
              sizedBoxHeightSmall,
              MyTextImage(text: textHeader, image: imgKabe),
              sizedBoxHeightLarge,
              MyListButton(
                onPressed: () => context.navigateToPage(const PrayerList()),
                child: Text(textPrayers, style: fontSFProM20),
              ),
              sizedBoxHeightLow,
              MyListButton(
                onPressed: () => context.navigateToPage(const EsmaulHusna()),
                child: Text(textEsma, style: fontSFProM20),
              ),
              sizedBoxHeightLow,
              MyListButton(
                onPressed: () => context.navigateToPage(const HadisList()),
                child: Text(textHadis, style: fontSFProM20),
              ),
              sizedBoxHeightLow,
              MyListButton(
                onPressed: () => context.navigateToPage(
                  MyZikirMatik(
                    prayerName: '',
                    prayerDescp: '',
                    child: MyLeftBackButton(
                        onPressed: () => context.navigateToPage(HomePage(
                            maxSlide:
                                MediaQuery.of(context).size.width * 0.835))),
                  ),
                ),
                child: Text(textZikir, style: fontSFProM20),
              ),
            ],
          ),
          MyBottomImage(image: imgRail, width: resp.wp(60)),
          MyBottomText(textTopName: textAyath, textDownName: textSurah),
        ],
      ),
    );
  }
}
