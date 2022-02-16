


import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/login/login_response.dart';

abstract class LoginRepository {
  Future<LoginResponse> login(LoginRequest request);
  
}