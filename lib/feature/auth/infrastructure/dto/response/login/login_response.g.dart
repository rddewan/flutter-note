// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$$_LoginRequestFromJson(Map<String, dynamic> json) =>
    _$_LoginRequest(
      accessToken: json['access_token'] as String,
      tokenId: json['token_id'] as String,
      userId: json['user_id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_LoginRequestToJson(_$_LoginRequest instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_id': instance.tokenId,
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
    };
