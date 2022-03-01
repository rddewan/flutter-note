// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignoutStateTearOff {
  const _$SignoutStateTearOff();

  _SignoutState call({required AsyncValue<bool> isLogout}) {
    return _SignoutState(
      isLogout: isLogout,
    );
  }
}

/// @nodoc
const $SignoutState = _$SignoutStateTearOff();

/// @nodoc
mixin _$SignoutState {
  AsyncValue<bool> get isLogout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignoutStateCopyWith<SignoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignoutStateCopyWith<$Res> {
  factory $SignoutStateCopyWith(
          SignoutState value, $Res Function(SignoutState) then) =
      _$SignoutStateCopyWithImpl<$Res>;
  $Res call({AsyncValue<bool> isLogout});
}

/// @nodoc
class _$SignoutStateCopyWithImpl<$Res> implements $SignoutStateCopyWith<$Res> {
  _$SignoutStateCopyWithImpl(this._value, this._then);

  final SignoutState _value;
  // ignore: unused_field
  final $Res Function(SignoutState) _then;

  @override
  $Res call({
    Object? isLogout = freezed,
  }) {
    return _then(_value.copyWith(
      isLogout: isLogout == freezed
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

/// @nodoc
abstract class _$SignoutStateCopyWith<$Res>
    implements $SignoutStateCopyWith<$Res> {
  factory _$SignoutStateCopyWith(
          _SignoutState value, $Res Function(_SignoutState) then) =
      __$SignoutStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncValue<bool> isLogout});
}

/// @nodoc
class __$SignoutStateCopyWithImpl<$Res> extends _$SignoutStateCopyWithImpl<$Res>
    implements _$SignoutStateCopyWith<$Res> {
  __$SignoutStateCopyWithImpl(
      _SignoutState _value, $Res Function(_SignoutState) _then)
      : super(_value, (v) => _then(v as _SignoutState));

  @override
  _SignoutState get _value => super._value as _SignoutState;

  @override
  $Res call({
    Object? isLogout = freezed,
  }) {
    return _then(_SignoutState(
      isLogout: isLogout == freezed
          ? _value.isLogout
          : isLogout // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
    ));
  }
}

/// @nodoc

class _$_SignoutState implements _SignoutState {
  _$_SignoutState({required this.isLogout});

  @override
  final AsyncValue<bool> isLogout;

  @override
  String toString() {
    return 'SignoutState(isLogout: $isLogout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignoutState &&
            const DeepCollectionEquality().equals(other.isLogout, isLogout));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLogout));

  @JsonKey(ignore: true)
  @override
  _$SignoutStateCopyWith<_SignoutState> get copyWith =>
      __$SignoutStateCopyWithImpl<_SignoutState>(this, _$identity);
}

abstract class _SignoutState implements SignoutState {
  factory _SignoutState({required AsyncValue<bool> isLogout}) = _$_SignoutState;

  @override
  AsyncValue<bool> get isLogout;
  @override
  @JsonKey(ignore: true)
  _$SignoutStateCopyWith<_SignoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
