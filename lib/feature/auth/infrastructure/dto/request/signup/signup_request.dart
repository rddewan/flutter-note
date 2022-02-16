
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_request.freezed.dart';
part 'signup_request.g.dart';

@freezed
@immutable
class SignupRequest with _$SignupRequest {
  @JsonSerializable()
  factory SignupRequest({
    required String name,
    required String email,
    required String password,
    @JsonKey(name:'password_confirmation')
    required String confirmPassword
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String,dynamic> json) => _$SignupRequestFromJson(json);

}