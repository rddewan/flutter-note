import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
@immutable
class LoginRequest with _$LoginRequest {
  @JsonSerializable()
  factory LoginRequest({required String email, required String password}) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String,dynamic> json) => _$LoginRequestFromJson(json);
}