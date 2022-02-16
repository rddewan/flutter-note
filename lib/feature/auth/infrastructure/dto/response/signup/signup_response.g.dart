// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupResponse _$$_SignupResponseFromJson(Map<String, dynamic> json) =>
    _$_SignupResponse(
      name: json['name'] as String,
      email: json['email'] as String,
      updatedAt: json['updated_at'] as String,
      createdAt: json['created_at'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_SignupResponseToJson(_$_SignupResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
