import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/widgets/my_text_image.dart';

import '../constants/constants.dart';
import '../home/home_page.dart';
import '../provider/zikirdua_main_provider.dart';
import '../widgets/my_divider.dart';
import '../widgets/my_left_back_button.dart';
import 'hadis_detail.dart';

class HadisList extends ConsumerWidget {
  const HadisList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hadisList = ref.watch(hadisMainProvider).zikirDuaList;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          MyLeftBackButton(
              onPressed: () => context.navigateToPage(HomePage(
                maxSlide: MediaQuery.of(context).size.width * 0.835,
              ))),
          MyTextImage(text: textBestHadis, image: imgRoza),
          Expanded(
            child: Padding(
              padding: paddingHor,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return MyDivider();
                },
                itemCount: hadisList.length,
                itemBuilder: (context, index) {
                  final model = hadisList[index];
                  return ListTile(
                    dense: true,
                    title: Text(model.name, style: fontSFProM18),
                    onTap: () => context.navigateToPage(
                      HadisDetail(
                        name: model.name,
                        besmele: model.besmele,
                        descp: model.descp,
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined, size: iconLow),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
