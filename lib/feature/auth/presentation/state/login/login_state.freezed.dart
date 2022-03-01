// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required AsyncValue<bool> isLogedin,
      bool isLoading = false,
      bool isPaused = false}) {
    return _LoginState(
      isLogedin: isLogedin,
      isLoading: isLoading,
      isPaused: isPaused,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  AsyncValue<bool> get isLogedin => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPaused => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({AsyncValue<bool> isLogedin, bool isLoading, bool isPaused});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isLogedin = freezed,
    Object? isLoading = freezed,
    Object? isPaused = freezed,
  }) {
    return _then(_value.copyWith(
      isLogedin: isLogedin == freezed
          ? _value.isLogedin
          : isLogedin // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: isPaused == freezed
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({AsyncValue<bool> isLogedin, bool isLoading, bool isPaused});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? isLogedin = freezed,
    Object? isLoading = freezed,
    Object? isPaused = freezed,
  }) {
    return _then(_LoginState(
      isLogedin: isLogedin == freezed
          ? _value.isLogedin
          : isLogedin // ignore: cast_nullable_to_non_nullable
              as AsyncValue<bool>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaused: isPaused == freezed
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {required this.isLogedin, this.isLoading = false, this.isPaused = false});

  @override
  final AsyncValue<bool> isLogedin;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isPaused;

  @override
  String toString() {
    return 'LoginState(isLogedin: $isLogedin, isLoading: $isLoading, isPaused: $isPaused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            const DeepCollectionEquality().equals(other.isLogedin, isLogedin) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isPaused, isPaused));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLogedin),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isPaused));

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required AsyncValue<bool> isLogedin,
      bool isLoading,
      bool isPaused}) = _$_LoginState;

  @override
  AsyncValue<bool> get isLogedin;
  @override
  bool get isLoading;
  @override
  bool get isPaused;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
