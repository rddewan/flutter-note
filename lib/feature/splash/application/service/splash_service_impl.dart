
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage_impl.dart';
import 'package:note/feature/splash/application/service/splash_service.dart';
import 'package:note/util/failure.dart';

/*
  provide the instance of AuthService
*/
final provideAuthService = Provider((ref) {
  final _repository = ref.watch(authStorageProvider);
  return SplashServiceImpl(_repository);

});

/*
this class is the implementation of AuthService
here we read the flutter secure storage to check if the user is loged in 
if user is loged in it will return the AuthModel
else return null
note it can throw exception
*/

class SplashServiceImpl extends SplashService {
  final AuthStorage _authStorage;

  SplashServiceImpl(this._authStorage);

  @override
  Future<Result<Failure, AuthModel?>> getAuthModel() async {
    try {
      final _success = await _authStorage.read();
      return Success(_success);
    }on Failure catch (_error) {
      return Error(_error);
    }
  }

  
  
}