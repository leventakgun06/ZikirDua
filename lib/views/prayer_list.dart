import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zikirdua/constants/navigator.dart';
import 'package:zikirdua/models/zikirdua_model.dart';
import 'package:zikirdua/views/prayer_detail.dart';
import 'package:zikirdua/widgets/my_divider.dart';
import 'package:zikirdua/widgets/my_left_back_button.dart';
import 'package:zikirdua/widgets/my_list_tile.dart';
import 'package:zikirdua/widgets/my_text_image.dart';

import '../constants/constants.dart';
import '../home/home_page.dart';
import '../provider/zikirdua_main_provider.dart';

class PrayerList extends ConsumerWidget {
  const PrayerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zikirList = ref.watch(zikirDuaMainProvider).zikirDuaList;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          MyLeftBackButton(
              onPressed: () => context.navigateToPage(HomePage(
                    maxSlide: MediaQuery.of(context).size.width * 0.835,
                  ))),
          MyTextImage(text: textBest, image: imgRoza),
          Expanded(
            child: Padding(
              padding: paddingHor,
              child: _NewWidget(zikirList: zikirList),
            ),
          )
        ],
      ),
    );
  }
}

class _NewWidget extends StatelessWidget {
  const _NewWidget({
    required this.zikirList,
  });

  final List<ZikirDuaModel> zikirList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return MyDivider();
      },
      itemCount: zikirList.length,
      itemBuilder: (context, index) {
        final model = zikirList[index];
        return MyListTile(
            text: model.name,
            onPressed: () {
              context.navigateToPage(
                PrayerDetail(
                  name: model.name,
                  besmele: model.besmele,
                  descp: model.descp,
                ),
              );
            });
      },
    );
  }
}
