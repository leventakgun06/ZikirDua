import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zikirdua/provider/zikirdua_datas_provider.dart';

import '../bloc/zikirdua_event.dart';
import '../bloc/zikirdua_notifier.dart';
import '../bloc/zikirdua_state.dart';

final zikirDuaMainProvider =
StateNotifierProvider.autoDispose<ZikirDuaNotifier, ZikirDuaState>(
      (ref) {
    final zikirDuaModelList =
    ref.watch(zikirDuaDatasProvider).whenOrNull(data: (data) => data);

    return ZikirDuaNotifier()
      ..mapEventsToState(
        UpdateListItems(
          zikirDuaModelList: zikirDuaModelList ?? [],
        ),
      );
  },
);

final ayetelMainProvider =
StateNotifierProvider.autoDispose<ZikirDuaNotifier, ZikirDuaState>(
      (ref) {
    final ayetelModelList =
    ref.watch(ayetelDatasProvider).whenOrNull(data: (data) => data);

    return ZikirDuaNotifier()
      ..mapEventsToState(
        UpdateListItems(
          zikirDuaModelList: ayetelModelList ?? [],
        ),
      );
  },
);

final hadisMainProvider =
StateNotifierProvider.autoDispose<ZikirDuaNotifier, ZikirDuaState>(
      (ref) {
    final hadisModelList =
    ref.watch(hadisDatasProvider).whenOrNull(data: (data) => data);

    return ZikirDuaNotifier()
      ..mapEventsToState(
        UpdateListItems(
          zikirDuaModelList: hadisModelList ?? [],
        ),
      );
  },
);

final esmaMainProvider =
StateNotifierProvider.autoDispose<ZikirDuaNotifier, ZikirDuaState>(
      (ref) {
    final esmaModelList =
    ref.watch(esmaDatasProvider).whenOrNull(data: (data) => data);

    return ZikirDuaNotifier()
      ..mapEventsToState(
        UpdateListItems(
          zikirDuaModelList: esmaModelList ?? [],
        ),
      );
  },
);