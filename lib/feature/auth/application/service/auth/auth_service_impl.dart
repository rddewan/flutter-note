
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage_impl.dart';
import 'package:note/feature/auth/application/service/auth/auth_service.dart';
import 'package:note/util/failure.dart';
//
final authServiceProvider = Provider<AuthService>((ref) {
  final _repository = ref.watch(authStorageProvider);
  
  return  AuthStorageServiceImpl(_repository) ;
});

class AuthStorageServiceImpl extends AuthService {
  final AuthStorage _authStorage;

  AuthStorageServiceImpl(this._authStorage);
  
  @override
  Future<Result<Failure, bool>> clear() async {
    try {

      final result = await  _authStorage.clear();
      return Success(result);

    } on Failure catch (failure) {
      return Error(failure);

    }
  }

  @override
  Future<Result<Failure, String?>> readAccessToken() async {
    try {

      final result = await  _authStorage.readAccessToken();
      return Success(result);

    } on Failure catch (failure) {
      return Error(failure);

    }
  }
  
}