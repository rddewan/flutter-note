
import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/signup/signup_response.dart';
import 'package:note/util/failure.dart';

abstract class SignupService {
  Future<Result<Failure,SignupResponse>> signup(SignupRequest request);
}