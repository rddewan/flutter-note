import 'package:multiple_result/multiple_result.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/util/failure.dart';

abstract class SplashService {
  Future<Result<Failure,AuthModel?>> getAuthModel();
}