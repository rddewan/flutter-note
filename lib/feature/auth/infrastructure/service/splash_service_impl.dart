
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/auth/infrastructure/repository/auth_storage_repository.dart';
import 'package:note/feature/auth/infrastructure/repository/auth_storage_repository_impl.dart';
import 'package:note/feature/auth/infrastructure/service/splash_service.dart';
import 'package:note/util/failure.dart';

/*
  provide the instance of SplashService
*/
final provideSplashService = Provider<SplashService>((ref) {
  final _repository = ref.watch(provideAuthStorageRepository);

  return SplashServiceImpl(_repository);

});

/*
this class is the implementation of SplashService
here we read the flutter secure storage to check if the user is loged in 
*/
class SplashServiceImpl extends SplashService {
  final AuthStorageRepository _repository;

  SplashServiceImpl(this._repository);
  
  @override
  Future<Result<Failure, AuthModel?>> readAuth() async {
    try {
      final result = await _repository.read();
      return Success(result);
    } on Failure catch (_error) {
      return Error(_error);
    }
  }
  
}