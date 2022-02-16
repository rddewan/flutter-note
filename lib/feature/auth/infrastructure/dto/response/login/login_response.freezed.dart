// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
class _$LoginResponseTearOff {
  const _$LoginResponseTearOff();

  _LoginRequest call(
      {@JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'token_id') required String tokenId,
      @JsonKey(name: 'user_id') required int userId,
      required String name,
      required String email}) {
    return _LoginRequest(
      accessToken: accessToken,
      tokenId: tokenId,
      userId: userId,
      name: name,
      email: email,
    );
  }

  LoginResponse fromJson(Map<String, Object?> json) {
    return LoginResponse.fromJson(json);
  }
}

/// @nodoc
const $LoginResponse = _$LoginResponseTearOff();

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_id')
  String get tokenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_id') String tokenId,
      @JsonKey(name: 'user_id') int userId,
      String name,
      String email});
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  final LoginResponse _value;
  // ignore: unused_field
  final $Res Function(LoginResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenId = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginRequestCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginRequestCopyWith(
          _LoginRequest value, $Res Function(_LoginRequest) then) =
      __$LoginRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_id') String tokenId,
      @JsonKey(name: 'user_id') int userId,
      String name,
      String email});
}

/// @nodoc
class __$LoginRequestCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res>
    implements _$LoginRequestCopyWith<$Res> {
  __$LoginRequestCopyWithImpl(
      _LoginRequest _value, $Res Function(_LoginRequest) _then)
      : super(_value, (v) => _then(v as _LoginRequest));

  @override
  _LoginRequest get _value => super._value as _LoginRequest;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenId = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_LoginRequest(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_LoginRequest implements _LoginRequest {
  _$_LoginRequest(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_id') required this.tokenId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.name,
      required this.email});

  factory _$_LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_id')
  final String tokenId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'LoginResponse(accessToken: $accessToken, tokenId: $tokenId, userId: $userId, name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginRequest &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.tokenId, tokenId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(tokenId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$LoginRequestCopyWith<_LoginRequest> get copyWith =>
      __$LoginRequestCopyWithImpl<_LoginRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestToJson(this);
  }
}

abstract class _LoginRequest implements LoginResponse {
  factory _LoginRequest(
      {@JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'token_id') required String tokenId,
      @JsonKey(name: 'user_id') required int userId,
      required String name,
      required String email}) = _$_LoginRequest;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$_LoginRequest.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_id')
  String get tokenId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$LoginRequestCopyWith<_LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
