// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) {
  return _SignupRequest.fromJson(json);
}

/// @nodoc
class _$SignupRequestTearOff {
  const _$SignupRequestTearOff();

  _SignupRequest call(
      {required String name,
      required String email,
      required String password,
      @JsonKey(name: 'password_confirmation')
          required String confirmPassword}) {
    return _SignupRequest(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  SignupRequest fromJson(Map<String, Object?> json) {
    return SignupRequest.fromJson(json);
  }
}

/// @nodoc
const $SignupRequest = _$SignupRequestTearOff();

/// @nodoc
mixin _$SignupRequest {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupRequestCopyWith<SignupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupRequestCopyWith<$Res> {
  factory $SignupRequestCopyWith(
          SignupRequest value, $Res Function(SignupRequest) then) =
      _$SignupRequestCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: 'password_confirmation') String confirmPassword});
}

/// @nodoc
class _$SignupRequestCopyWithImpl<$Res>
    implements $SignupRequestCopyWith<$Res> {
  _$SignupRequestCopyWithImpl(this._value, this._then);

  final SignupRequest _value;
  // ignore: unused_field
  final $Res Function(SignupRequest) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignupRequestCopyWith<$Res>
    implements $SignupRequestCopyWith<$Res> {
  factory _$SignupRequestCopyWith(
          _SignupRequest value, $Res Function(_SignupRequest) then) =
      __$SignupRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      String password,
      @JsonKey(name: 'password_confirmation') String confirmPassword});
}

/// @nodoc
class __$SignupRequestCopyWithImpl<$Res>
    extends _$SignupRequestCopyWithImpl<$Res>
    implements _$SignupRequestCopyWith<$Res> {
  __$SignupRequestCopyWithImpl(
      _SignupRequest _value, $Res Function(_SignupRequest) _then)
      : super(_value, (v) => _then(v as _SignupRequest));

  @override
  _SignupRequest get _value => super._value as _SignupRequest;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_SignupRequest(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SignupRequest implements _SignupRequest {
  _$_SignupRequest(
      {required this.name,
      required this.email,
      required this.password,
      @JsonKey(name: 'password_confirmation') required this.confirmPassword});

  factory _$_SignupRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SignupRequestFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  @override
  String toString() {
    return 'SignupRequest(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupRequest &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$SignupRequestCopyWith<_SignupRequest> get copyWith =>
      __$SignupRequestCopyWithImpl<_SignupRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupRequestToJson(this);
  }
}

abstract class _SignupRequest implements SignupRequest {
  factory _SignupRequest(
      {required String name,
      required String email,
      required String password,
      @JsonKey(name: 'password_confirmation')
          required String confirmPassword}) = _$_SignupRequest;

  factory _SignupRequest.fromJson(Map<String, dynamic> json) =
      _$_SignupRequest.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'password_confirmation')
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$SignupRequestCopyWith<_SignupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
