import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/zikirdua_model.dart';

part 'zikirdua_event.freezed.dart';

@freezed
class ZikirDuaEvent with _$ZikirDuaEvent {
  const factory ZikirDuaEvent.zikirDuaTextChanged({required String text}) =
  zikirDuaTextChanged;
  const factory ZikirDuaEvent.updateListItems(
      {required List<ZikirDuaModel> zikirDuaModelList}) = UpdateListItems;
}