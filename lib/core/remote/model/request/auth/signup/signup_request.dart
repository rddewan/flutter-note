
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request.freezed.dart';

@freezed
@immutable
class SignupRequest with _$SignupRequest {
  factory SignupRequest({
    required String name,
    required String email,
    required String password,
    required String confrmPassword
  }) = _SignupRequest;
}