// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      accessToken: json['accessToken'] as String,
      tokenId: json['tokenId'] as String,
      userId: json['userId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenId': instance.tokenId,
      'userId': instance.userId,
      'name': instance.name,
      'email': instance.email,
    };
