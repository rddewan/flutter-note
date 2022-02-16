
import 'package:multiple_result/multiple_result.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/util/failure.dart';

abstract class LoginService{
  Future<Result<Failure,bool>> login(LoginRequest request);
  Future<bool> save(AuthModel authModel);
}