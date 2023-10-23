// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zikirdua_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZikirDuaState {
  List<ZikirDuaModel> get zikirDuaList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZikirDuaStateCopyWith<ZikirDuaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZikirDuaStateCopyWith<$Res> {
  factory $ZikirDuaStateCopyWith(
          ZikirDuaState value, $Res Function(ZikirDuaState) then) =
      _$ZikirDuaStateCopyWithImpl<$Res, ZikirDuaState>;
  @useResult
  $Res call({List<ZikirDuaModel> zikirDuaList});
}

/// @nodoc
class _$ZikirDuaStateCopyWithImpl<$Res, $Val extends ZikirDuaState>
    implements $ZikirDuaStateCopyWith<$Res> {
  _$ZikirDuaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zikirDuaList = null,
  }) {
    return _then(_value.copyWith(
      zikirDuaList: null == zikirDuaList
          ? _value.zikirDuaList
          : zikirDuaList // ignore: cast_nullable_to_non_nullable
              as List<ZikirDuaModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZikirDuaStateImplCopyWith<$Res>
    implements $ZikirDuaStateCopyWith<$Res> {
  factory _$$ZikirDuaStateImplCopyWith(
          _$ZikirDuaStateImpl value, $Res Function(_$ZikirDuaStateImpl) then) =
      __$$ZikirDuaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ZikirDuaModel> zikirDuaList});
}

/// @nodoc
class __$$ZikirDuaStateImplCopyWithImpl<$Res>
    extends _$ZikirDuaStateCopyWithImpl<$Res, _$ZikirDuaStateImpl>
    implements _$$ZikirDuaStateImplCopyWith<$Res> {
  __$$ZikirDuaStateImplCopyWithImpl(
      _$ZikirDuaStateImpl _value, $Res Function(_$ZikirDuaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zikirDuaList = null,
  }) {
    return _then(_$ZikirDuaStateImpl(
      zikirDuaList: null == zikirDuaList
          ? _value._zikirDuaList
          : zikirDuaList // ignore: cast_nullable_to_non_nullable
              as List<ZikirDuaModel>,
    ));
  }
}

/// @nodoc

class _$ZikirDuaStateImpl extends _ZikirDuaState {
  _$ZikirDuaStateImpl({required final List<ZikirDuaModel> zikirDuaList})
      : _zikirDuaList = zikirDuaList,
        super._();

  final List<ZikirDuaModel> _zikirDuaList;
  @override
  List<ZikirDuaModel> get zikirDuaList {
    if (_zikirDuaList is EqualUnmodifiableListView) return _zikirDuaList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zikirDuaList);
  }

  @override
  String toString() {
    return 'ZikirDuaState(zikirDuaList: $zikirDuaList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZikirDuaStateImpl &&
            const DeepCollectionEquality()
                .equals(other._zikirDuaList, _zikirDuaList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_zikirDuaList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZikirDuaStateImplCopyWith<_$ZikirDuaStateImpl> get copyWith =>
      __$$ZikirDuaStateImplCopyWithImpl<_$ZikirDuaStateImpl>(this, _$identity);
}

abstract class _ZikirDuaState extends ZikirDuaState {
  factory _ZikirDuaState({required final List<ZikirDuaModel> zikirDuaList}) =
      _$ZikirDuaStateImpl;
  _ZikirDuaState._() : super._();

  @override
  List<ZikirDuaModel> get zikirDuaList;
  @override
  @JsonKey(ignore: true)
  _$$ZikirDuaStateImplCopyWith<_$ZikirDuaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
