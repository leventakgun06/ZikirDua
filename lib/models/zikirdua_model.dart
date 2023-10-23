import 'package:freezed_annotation/freezed_annotation.dart';

part 'zikirdua_model.freezed.dart';

@freezed
class ZikirDuaModel with _$ZikirDuaModel {
  factory ZikirDuaModel({
    required int id,
    required String name,
    required String besmele,
    required String descp,
  }) = _ZikirDuaModel;
  const ZikirDuaModel._();

  factory ZikirDuaModel.empty() => ZikirDuaModel(
    id: 0,
    name: "",
    besmele: "",
    descp: "",
  );
}