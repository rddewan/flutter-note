// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$$_LoginRequestFromJson(Map<String, dynamic> json) =>
    _$_LoginRequest(
      accessToken: json['accessToken'] as String,
      tokenId: json['tokenId'] as String,
      userId: json['userId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_LoginRequestToJson(_$_LoginRequest instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenId': instance.tokenId,
      'userId': instance.userId,
      'name': instance.name,
      'email': instance.email,
    };
