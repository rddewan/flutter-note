

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/auth/application/service/signup/signup_service.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/signup/signup_response.dart';
import 'package:note/feature/auth/infrastructure/repository/signup/signup_repository.dart';
import 'package:note/feature/auth/infrastructure/repository/signup/signup_repository_impl.dart';
import 'package:note/util/failure.dart';

//provide SignupService
final signupServiceProvider = Provider<SignupService>((ref) {
  final _repository = ref.watch(signupRepositoryProvider);
  
  return SignupServiceImpl(_repository);
});

/// This is a service class 
/// @param [SignupRepository]
class SignupServiceImpl extends SignupService {
  final SignupRepository _repository;

  SignupServiceImpl(this._repository);


  @override
  Future<Result<Failure, SignupResponse>> signup(SignupRequest request) async {
    try {
      final result = await  _repository.signup(request);
      
      return Success(result);

    } on Failure catch (failure) {
      return Error(failure);

    }
  }

}