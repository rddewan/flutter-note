


import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/signup/signup_response.dart';

abstract class SignupRepository {
  Future<SignupResponse> signup(SignupRequest request);
  

}