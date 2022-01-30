

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage_impl.dart';
import 'package:note/feature/auth/infrastructure/repository/auth_storage_repository.dart';

/*
provide instance of AuthStorageRepository
*/
final provideAuthStorageRepository = Provider<AuthStorageRepository>((ref){
  final _authStorage = ref.watch(provideAuthStorage);

  return AuthStorageRepositoryImpl(_authStorage);

});

/*
this class extends  AuthStorageRepository and implements its functionality 
*/
class AuthStorageRepositoryImpl extends AuthStorageRepository {
  final AuthStorage _authStorage;

  AuthStorageRepositoryImpl(this._authStorage);

  @override
  Future<bool> clear() {
    return _authStorage.clear();
  }

  @override
  Future<AuthModel?> read() async {
    return await _authStorage.read();
  }

  @override
  Future<bool> save(AuthModel authModel) {
    final result  = _authStorage.save(authModel);
    return result;
  }
  
}