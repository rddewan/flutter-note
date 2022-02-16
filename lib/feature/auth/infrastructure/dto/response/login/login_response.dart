
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed 
@immutable
class LoginResponse with _$LoginResponse {
  @JsonSerializable()
  factory LoginResponse({
    @JsonKey(name: 'access_token')
    required String accessToken,
    @JsonKey(name: 'token_id')
    required String tokenId,
    @JsonKey(name: 'user_id')
    required int userId,  
    required String name,
    required String email,
  }) = _LoginRequest;

  factory LoginResponse.fromJson(Map<String,dynamic> json) => _$LoginResponseFromJson(json);
}