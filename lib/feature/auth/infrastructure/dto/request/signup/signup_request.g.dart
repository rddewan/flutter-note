// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupRequest _$$_SignupRequestFromJson(Map<String, dynamic> json) =>
    _$_SignupRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$$_SignupRequestToJson(_$_SignupRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
    };
