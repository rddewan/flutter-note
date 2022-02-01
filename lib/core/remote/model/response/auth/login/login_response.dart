
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed 
@immutable
class LoginResponse with _$LoginResponse {
  @JsonSerializable()
  factory LoginResponse({
    required String accessToken,
    required String tokenId,
    required int userId,
    required String name,
    required String email,
  }) = _LoginRequest;

  factory LoginResponse.fromJson(Map<String,dynamic> json) => _$LoginResponseFromJson(json);
}