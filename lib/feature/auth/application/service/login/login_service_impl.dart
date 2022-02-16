

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage_impl.dart';
import 'package:note/feature/auth/application/service/login/login_service.dart';
import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/feature/auth/infrastructure/repository/login/login_repository.dart';
import 'package:note/feature/auth/infrastructure/repository/login/login_repository_impl.dart';


import 'package:note/util/failure.dart';

// Provide LoginService
final loginServiceProvider = Provider<LoginService>((ref) {
  final _repository = ref.watch(loginRepositoryProvider);
  final _authStorage = ref.watch(authStorageProvider);
  
  return LoginServiceImpl(_repository, _authStorage);
});

/// This is a implementation of LoginService
/// @param [LoginRepository]
class LoginServiceImpl extends LoginService {
  final LoginRepository _repository;
  final AuthStorage _authStorage;

  LoginServiceImpl(this._repository, this._authStorage);


  @override
  Future<Result<Failure, bool>> login(LoginRequest request) async {
    try {

      final response = await _repository.login(request);
      final authModel = AuthModel.fromJson(response.toJson());

      final result  = await save(authModel);

      return Success(result);

    } on Failure catch (failure) {
      return Error(failure);
    }
  }

  @override
  Future<bool> save(AuthModel authModel) async {
    try {

      return await _authStorage.save(authModel);

    } on Failure catch (failure) {      
      throw Failure(message: failure.message);
    }   
  }
  
}