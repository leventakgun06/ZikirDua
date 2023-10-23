import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/zikirdua_model.dart';

part 'zikirdua_state.freezed.dart';

@freezed
class ZikirDuaState with _$ZikirDuaState {
  factory ZikirDuaState({
    required List<ZikirDuaModel> zikirDuaList,
  }) = _ZikirDuaState;
  const ZikirDuaState._();

  factory ZikirDuaState.empty() => ZikirDuaState(
    zikirDuaList: [],
  );
}