// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteResponse _$NoteResponseFromJson(Map<String, dynamic> json) {
  return _NoteResponse.fromJson(json);
}

/// @nodoc
class _$NoteResponseTearOff {
  const _$NoteResponseTearOff();

  _NoteResponse call(
      {required String id,
      @JsonKey(name: 'user_id') required String userId,
      required String title,
      required String body,
      required String note,
      required String status,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt}) {
    return _NoteResponse(
      id: id,
      userId: userId,
      title: title,
      body: body,
      note: note,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  NoteResponse fromJson(Map<String, Object?> json) {
    return NoteResponse.fromJson(json);
  }
}

/// @nodoc
const $NoteResponse = _$NoteResponseTearOff();

/// @nodoc
mixin _$NoteResponse {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteResponseCopyWith<NoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteResponseCopyWith<$Res> {
  factory $NoteResponseCopyWith(
          NoteResponse value, $Res Function(NoteResponse) then) =
      _$NoteResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String title,
      String body,
      String note,
      String status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$NoteResponseCopyWithImpl<$Res> implements $NoteResponseCopyWith<$Res> {
  _$NoteResponseCopyWithImpl(this._value, this._then);

  final NoteResponse _value;
  // ignore: unused_field
  final $Res Function(NoteResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? note = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoteResponseCopyWith<$Res>
    implements $NoteResponseCopyWith<$Res> {
  factory _$NoteResponseCopyWith(
          _NoteResponse value, $Res Function(_NoteResponse) then) =
      __$NoteResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String title,
      String body,
      String note,
      String status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$NoteResponseCopyWithImpl<$Res> extends _$NoteResponseCopyWithImpl<$Res>
    implements _$NoteResponseCopyWith<$Res> {
  __$NoteResponseCopyWithImpl(
      _NoteResponse _value, $Res Function(_NoteResponse) _then)
      : super(_value, (v) => _then(v as _NoteResponse));

  @override
  _NoteResponse get _value => super._value as _NoteResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? note = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_NoteResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_NoteResponse implements _NoteResponse {
  _$_NoteResponse(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.title,
      required this.body,
      required this.note,
      required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_NoteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NoteResponseFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String title;
  @override
  final String body;
  @override
  final String note;
  @override
  final String status;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'NoteResponse(id: $id, userId: $userId, title: $title, body: $body, note: $note, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoteResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$NoteResponseCopyWith<_NoteResponse> get copyWith =>
      __$NoteResponseCopyWithImpl<_NoteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteResponseToJson(this);
  }
}

abstract class _NoteResponse implements NoteResponse {
  factory _NoteResponse(
          {required String id,
          @JsonKey(name: 'user_id') required String userId,
          required String title,
          required String body,
          required String note,
          required String status,
          @JsonKey(name: 'created_at') required String createdAt,
          @JsonKey(name: 'updated_at') required String updatedAt}) =
      _$_NoteResponse;

  factory _NoteResponse.fromJson(Map<String, dynamic> json) =
      _$_NoteResponse.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get title;
  @override
  String get body;
  @override
  String get note;
  @override
  String get status;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$NoteResponseCopyWith<_NoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
