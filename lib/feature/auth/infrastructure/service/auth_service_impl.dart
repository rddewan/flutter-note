
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/feature/auth/infrastructure/repository/auth_storage_repository.dart';
import 'package:note/feature/auth/infrastructure/repository/auth_storage_repository_impl.dart';
import 'package:note/feature/auth/infrastructure/service/auth_service.dart';
import 'package:note/util/failure.dart';

/*
  provide the instance of AuthService
*/
final provideAuthService = Provider((ref) {
  final _repository = ref.watch(provideAuthStorageRepository);
  return AuthServiceImpl(_repository);

});

/*
this class is the implementation of AuthService
here we read the flutter secure storage to check if the user is loged in 
if user is loged in it will return the AuthModel
else return null
note it can throw exception
*/

class AuthServiceImpl extends AuthService {
  final AuthStorageRepository _repository;

  AuthServiceImpl(this._repository);

  @override
  Future<Result<Failure, AuthModel?>> getAuthModel() async {
    try {
      final _success = await _repository.read();
      return Success(_success);
    }on Failure catch (_error) {
      return Error(_error);
    }
  }

  
  
}