// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zikirdua_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZikirDuaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) zikirDuaTextChanged,
    required TResult Function(List<ZikirDuaModel> zikirDuaModelList)
        updateListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? zikirDuaTextChanged,
    TResult? Function(List<ZikirDuaModel> zikirDuaModelList)? updateListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? zikirDuaTextChanged,
    TResult Function(List<ZikirDuaModel> zikirDuaModelList)? updateListItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(zikirDuaTextChanged value) zikirDuaTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(zikirDuaTextChanged value)? zikirDuaTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(zikirDuaTextChanged value)? zikirDuaTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZikirDuaEventCopyWith<$Res> {
  factory $ZikirDuaEventCopyWith(
          ZikirDuaEvent value, $Res Function(ZikirDuaEvent) then) =
      _$ZikirDuaEventCopyWithImpl<$Res, ZikirDuaEvent>;
}

/// @nodoc
class _$ZikirDuaEventCopyWithImpl<$Res, $Val extends ZikirDuaEvent>
    implements $ZikirDuaEventCopyWith<$Res> {
  _$ZikirDuaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$zikirDuaTextChangedImplCopyWith<$Res> {
  factory _$$zikirDuaTextChangedImplCopyWith(_$zikirDuaTextChangedImpl value,
          $Res Function(_$zikirDuaTextChangedImpl) then) =
      __$$zikirDuaTextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$zikirDuaTextChangedImplCopyWithImpl<$Res>
    extends _$ZikirDuaEventCopyWithImpl<$Res, _$zikirDuaTextChangedImpl>
    implements _$$zikirDuaTextChangedImplCopyWith<$Res> {
  __$$zikirDuaTextChangedImplCopyWithImpl(_$zikirDuaTextChangedImpl _value,
      $Res Function(_$zikirDuaTextChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$zikirDuaTextChangedImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$zikirDuaTextChangedImpl implements zikirDuaTextChanged {
  const _$zikirDuaTextChangedImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'ZikirDuaEvent.zikirDuaTextChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$zikirDuaTextChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$zikirDuaTextChangedImplCopyWith<_$zikirDuaTextChangedImpl> get copyWith =>
      __$$zikirDuaTextChangedImplCopyWithImpl<_$zikirDuaTextChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) zikirDuaTextChanged,
    required TResult Function(List<ZikirDuaModel> zikirDuaModelList)
        updateListItems,
  }) {
    return zikirDuaTextChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? zikirDuaTextChanged,
    TResult? Function(List<ZikirDuaModel> zikirDuaModelList)? updateListItems,
  }) {
    return zikirDuaTextChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? zikirDuaTextChanged,
    TResult Function(List<ZikirDuaModel> zikirDuaModelList)? updateListItems,
    required TResult orElse(),
  }) {
    if (zikirDuaTextChanged != null) {
      return zikirDuaTextChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(zikirDuaTextChanged value) zikirDuaTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
  }) {
    return zikirDuaTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(zikirDuaTextChanged value)? zikirDuaTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
  }) {
    return zikirDuaTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(zikirDuaTextChanged value)? zikirDuaTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    required TResult orElse(),
  }) {
    if (zikirDuaTextChanged != null) {
      return zikirDuaTextChanged(this);
    }
    return orElse();
  }
}

abstract class zikirDuaTextChanged implements ZikirDuaEvent {
  const factory zikirDuaTextChanged({required final String text}) =
      _$zikirDuaTextChangedImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$zikirDuaTextChangedImplCopyWith<_$zikirDuaTextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateListItemsImplCopyWith<$Res> {
  factory _$$UpdateListItemsImplCopyWith(_$UpdateListItemsImpl value,
          $Res Function(_$UpdateListItemsImpl) then) =
      __$$UpdateListItemsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ZikirDuaModel> zikirDuaModelList});
}

/// @nodoc
class __$$UpdateListItemsImplCopyWithImpl<$Res>
    extends _$ZikirDuaEventCopyWithImpl<$Res, _$UpdateListItemsImpl>
    implements _$$UpdateListItemsImplCopyWith<$Res> {
  __$$UpdateListItemsImplCopyWithImpl(
      _$UpdateListItemsImpl _value, $Res Function(_$UpdateListItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zikirDuaModelList = null,
  }) {
    return _then(_$UpdateListItemsImpl(
      zikirDuaModelList: null == zikirDuaModelList
          ? _value._zikirDuaModelList
          : zikirDuaModelList // ignore: cast_nullable_to_non_nullable
              as List<ZikirDuaModel>,
    ));
  }
}

/// @nodoc

class _$UpdateListItemsImpl implements UpdateListItems {
  const _$UpdateListItemsImpl(
      {required final List<ZikirDuaModel> zikirDuaModelList})
      : _zikirDuaModelList = zikirDuaModelList;

  final List<ZikirDuaModel> _zikirDuaModelList;
  @override
  List<ZikirDuaModel> get zikirDuaModelList {
    if (_zikirDuaModelList is EqualUnmodifiableListView)
      return _zikirDuaModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zikirDuaModelList);
  }

  @override
  String toString() {
    return 'ZikirDuaEvent.updateListItems(zikirDuaModelList: $zikirDuaModelList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateListItemsImpl &&
            const DeepCollectionEquality()
                .equals(other._zikirDuaModelList, _zikirDuaModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_zikirDuaModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateListItemsImplCopyWith<_$UpdateListItemsImpl> get copyWith =>
      __$$UpdateListItemsImplCopyWithImpl<_$UpdateListItemsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) zikirDuaTextChanged,
    required TResult Function(List<ZikirDuaModel> zikirDuaModelList)
        updateListItems,
  }) {
    return updateListItems(zikirDuaModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? zikirDuaTextChanged,
    TResult? Function(List<ZikirDuaModel> zikirDuaModelList)? updateListItems,
  }) {
    return updateListItems?.call(zikirDuaModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? zikirDuaTextChanged,
    TResult Function(List<ZikirDuaModel> zikirDuaModelList)? updateListItems,
    required TResult orElse(),
  }) {
    if (updateListItems != null) {
      return updateListItems(zikirDuaModelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(zikirDuaTextChanged value) zikirDuaTextChanged,
    required TResult Function(UpdateListItems value) updateListItems,
  }) {
    return updateListItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(zikirDuaTextChanged value)? zikirDuaTextChanged,
    TResult? Function(UpdateListItems value)? updateListItems,
  }) {
    return updateListItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(zikirDuaTextChanged value)? zikirDuaTextChanged,
    TResult Function(UpdateListItems value)? updateListItems,
    required TResult orElse(),
  }) {
    if (updateListItems != null) {
      return updateListItems(this);
    }
    return orElse();
  }
}

abstract class UpdateListItems implements ZikirDuaEvent {
  const factory UpdateListItems(
          {required final List<ZikirDuaModel> zikirDuaModelList}) =
      _$UpdateListItemsImpl;

  List<ZikirDuaModel> get zikirDuaModelList;
  @JsonKey(ignore: true)
  _$$UpdateListItemsImplCopyWith<_$UpdateListItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
