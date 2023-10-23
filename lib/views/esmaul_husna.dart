import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/widgets/my_left_back_button.dart';

import '../constants/constants.dart';
import '../home/home_page.dart';
import '../provider/zikirdua_main_provider.dart';
import '../widgets/my_divider.dart';
import '../widgets/my_zikir_matik.dart';

class EsmaulHusna extends ConsumerWidget {
  const EsmaulHusna({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Responsive resp = Responsive.of(context);
    final esmaList = ref.watch(esmaMainProvider).zikirDuaList;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          MyLeftBackButton(
              onPressed: () => context.navigateToPage(HomePage(
                    maxSlide: MediaQuery.of(context).size.width * 0.835,
                  ))),
          _MyTextImage(
              text: textEsmaUl,
              image: imgAllah,
              color: Theme.of(context).colorScheme.primary),
          sizedBoxHeightLow,
          Expanded(
            child: Padding(
              padding: paddingHor,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return MyDivider();
                },
                itemCount: esmaList.length,
                itemBuilder: (context, index) {
                  final model = esmaList[index];
                  return ListTile(
                    dense: true,
                    leading: Container(
                      width: Platform.isAndroid ? resp.wp(8) : resp.wp(8),
                      height: Platform.isAndroid ? resp.hp(4) : resp.hp(3.8),
                      decoration: BoxDecoration(
                        borderRadius: borderRadiusLarge,
                        color: Theme.of(context).colorScheme.secondary,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: Center(
                          child:
                              Text(model.id.toString(), style: fontSFProM16)),
                    ),
                    title: Text(model.name, style: fontSFProM18),
                    subtitle: Text(model.descp, style: fontSFProM16),
                    onTap: () {
                      context.navigateToPage(MyZikirMatik(
                          prayerDescp: model.descp, prayerName: model.name,
                        child: MyLeftBackButton(
                          onPressed: () => context.navigateToPage(const EsmaulHusna()),
                        )));
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MyTextImage extends StatelessWidget {
  const _MyTextImage(
      {required this.text, required this.image, required this.color});

  final String text;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final Responsive resp = Responsive.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text, style: fontSFProM40),
        Image.asset(
          image,
          width: resp.wp(44),
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
