// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      accessToken: json['access_token'] as String,
      tokenId: json['token_id'] as String,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_id': instance.tokenId,
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
    };
