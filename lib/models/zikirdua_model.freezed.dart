// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zikirdua_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZikirDuaModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get besmele => throw _privateConstructorUsedError;
  String get descp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZikirDuaModelCopyWith<ZikirDuaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZikirDuaModelCopyWith<$Res> {
  factory $ZikirDuaModelCopyWith(
          ZikirDuaModel value, $Res Function(ZikirDuaModel) then) =
      _$ZikirDuaModelCopyWithImpl<$Res, ZikirDuaModel>;
  @useResult
  $Res call({int id, String name, String besmele, String descp});
}

/// @nodoc
class _$ZikirDuaModelCopyWithImpl<$Res, $Val extends ZikirDuaModel>
    implements $ZikirDuaModelCopyWith<$Res> {
  _$ZikirDuaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? besmele = null,
    Object? descp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      besmele: null == besmele
          ? _value.besmele
          : besmele // ignore: cast_nullable_to_non_nullable
              as String,
      descp: null == descp
          ? _value.descp
          : descp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZikirDuaModelImplCopyWith<$Res>
    implements $ZikirDuaModelCopyWith<$Res> {
  factory _$$ZikirDuaModelImplCopyWith(
          _$ZikirDuaModelImpl value, $Res Function(_$ZikirDuaModelImpl) then) =
      __$$ZikirDuaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String besmele, String descp});
}

/// @nodoc
class __$$ZikirDuaModelImplCopyWithImpl<$Res>
    extends _$ZikirDuaModelCopyWithImpl<$Res, _$ZikirDuaModelImpl>
    implements _$$ZikirDuaModelImplCopyWith<$Res> {
  __$$ZikirDuaModelImplCopyWithImpl(
      _$ZikirDuaModelImpl _value, $Res Function(_$ZikirDuaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? besmele = null,
    Object? descp = null,
  }) {
    return _then(_$ZikirDuaModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      besmele: null == besmele
          ? _value.besmele
          : besmele // ignore: cast_nullable_to_non_nullable
              as String,
      descp: null == descp
          ? _value.descp
          : descp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ZikirDuaModelImpl extends _ZikirDuaModel {
  _$ZikirDuaModelImpl(
      {required this.id,
      required this.name,
      required this.besmele,
      required this.descp})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String besmele;
  @override
  final String descp;

  @override
  String toString() {
    return 'ZikirDuaModel(id: $id, name: $name, besmele: $besmele, descp: $descp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZikirDuaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.besmele, besmele) || other.besmele == besmele) &&
            (identical(other.descp, descp) || other.descp == descp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, besmele, descp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZikirDuaModelImplCopyWith<_$ZikirDuaModelImpl> get copyWith =>
      __$$ZikirDuaModelImplCopyWithImpl<_$ZikirDuaModelImpl>(this, _$identity);
}

abstract class _ZikirDuaModel extends ZikirDuaModel {
  factory _ZikirDuaModel(
      {required final int id,
      required final String name,
      required final String besmele,
      required final String descp}) = _$ZikirDuaModelImpl;
  _ZikirDuaModel._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  String get besmele;
  @override
  String get descp;
  @override
  @JsonKey(ignore: true)
  _$$ZikirDuaModelImplCopyWith<_$ZikirDuaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
