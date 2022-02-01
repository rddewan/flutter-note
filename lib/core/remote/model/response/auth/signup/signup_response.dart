
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.freezed.dart';
part 'signup_response.g.dart';

@freezed
@immutable
class SignupResponse with _$SignupResponse {
  @JsonSerializable()
  factory SignupResponse({
    required String name,
    required String email,
    required String updatedAt,
    required String createdAt,
    required int id,
  }) = _SignupResponse;

  factory SignupResponse.fromJson(Map<String,dynamic> json) => _$SignupResponseFromJson(json);
  
}