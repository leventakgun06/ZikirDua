import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zikirdua/bloc/zikirdua_event.dart';
import 'package:zikirdua/bloc/zikirdua_state.dart';

class ZikirDuaNotifier extends StateNotifier<ZikirDuaState> {
  ZikirDuaNotifier() : super(ZikirDuaState.empty());

  void mapEventsToState(ZikirDuaEvent event) {
    event.map(
      zikirDuaTextChanged: (zikirDuaTextChangedEvent) {
        final zikirDuaList = [...state.zikirDuaList];
        final zikirDuaCepTvList = zikirDuaList
            .where((zikirDuaModel) => zikirDuaModel.name
            .toLowerCase()
            .contains(zikirDuaTextChangedEvent.text.toLowerCase().trimLeft()))
            .toList();

        state = state.copyWith(zikirDuaList: zikirDuaCepTvList);
      },
      updateListItems: (updateListItemsEvent) {
        state = state.copyWith(
          zikirDuaList: updateListItemsEvent.zikirDuaModelList,
        );
      },
    );
  }
}