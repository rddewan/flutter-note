
import 'package:note/core/remote/model/request/auth/login/login_request.dart';
import 'package:note/core/remote/model/response/auth/login/login_response.dart';

abstract class LoginRepository {
  Future<LoginResponse> login(LoginRequest request);
  
}