// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) {
  return _SignupResponse.fromJson(json);
}

/// @nodoc
class _$SignupResponseTearOff {
  const _$SignupResponseTearOff();

  _SignupResponse call(
      {required String name,
      required String email,
      @JsonKey(name: 'updated_at') required String updatedAt,
      @JsonKey(name: 'created_at') required String createdAt,
      required int id}) {
    return _SignupResponse(
      name: name,
      email: email,
      updatedAt: updatedAt,
      createdAt: createdAt,
      id: id,
    );
  }

  SignupResponse fromJson(Map<String, Object?> json) {
    return SignupResponse.fromJson(json);
  }
}

/// @nodoc
const $SignupResponse = _$SignupResponseTearOff();

/// @nodoc
mixin _$SignupResponse {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupResponseCopyWith<SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseCopyWith<$Res> {
  factory $SignupResponseCopyWith(
          SignupResponse value, $Res Function(SignupResponse) then) =
      _$SignupResponseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String email,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'created_at') String createdAt,
      int id});
}

/// @nodoc
class _$SignupResponseCopyWithImpl<$Res>
    implements $SignupResponseCopyWith<$Res> {
  _$SignupResponseCopyWithImpl(this._value, this._then);

  final SignupResponse _value;
  // ignore: unused_field
  final $Res Function(SignupResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
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
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SignupResponseCopyWith<$Res>
    implements $SignupResponseCopyWith<$Res> {
  factory _$SignupResponseCopyWith(
          _SignupResponse value, $Res Function(_SignupResponse) then) =
      __$SignupResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String email,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'created_at') String createdAt,
      int id});
}

/// @nodoc
class __$SignupResponseCopyWithImpl<$Res>
    extends _$SignupResponseCopyWithImpl<$Res>
    implements _$SignupResponseCopyWith<$Res> {
  __$SignupResponseCopyWithImpl(
      _SignupResponse _value, $Res Function(_SignupResponse) _then)
      : super(_value, (v) => _then(v as _SignupResponse));

  @override
  _SignupResponse get _value => super._value as _SignupResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_SignupResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SignupResponse implements _SignupResponse {
  _$_SignupResponse(
      {required this.name,
      required this.email,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.id});

  factory _$_SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignupResponseFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final int id;

  @override
  String toString() {
    return 'SignupResponse(name: $name, email: $email, updatedAt: $updatedAt, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupResponse &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$SignupResponseCopyWith<_SignupResponse> get copyWith =>
      __$SignupResponseCopyWithImpl<_SignupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignupResponseToJson(this);
  }
}

abstract class _SignupResponse implements SignupResponse {
  factory _SignupResponse(
      {required String name,
      required String email,
      @JsonKey(name: 'updated_at') required String updatedAt,
      @JsonKey(name: 'created_at') required String createdAt,
      required int id}) = _$_SignupResponse;

  factory _SignupResponse.fromJson(Map<String, dynamic> json) =
      _$_SignupResponse.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$SignupResponseCopyWith<_SignupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
