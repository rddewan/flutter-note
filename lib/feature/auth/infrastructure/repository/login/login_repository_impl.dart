import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/login/login_response.dart';
import 'package:note/feature/auth/infrastructure/remote_service/login/login_api_service.dart';
import 'package:note/feature/auth/infrastructure/repository/login/login_repository.dart';
import 'package:note/util/failure.dart';


// Provide instance of LoginRepository
final loginRepositoryProvider = Provider<LoginRepository>((ref) {
  final _loginApiService = ref.watch(provideLoginApiService);
  
  return LoginRepositoryImpl(_loginApiService);
});

/// This is repository calss which implements LoginRepository
/// [@param LoginApiService[]
class LoginRepositoryImpl extends LoginRepository {  
  final LoginApiService _loginApiService;

  LoginRepositoryImpl(this._loginApiService);
  

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    
    try {
      
      return await _loginApiService.login(request);     

    } on DioError catch (e) {
      
      if (e.error is SocketException) {
        throw Failure(message: e.message);
      }
      if (e.response?.statusCode == 401) {
        throw Failure(message: e.response?.data.toString() ?? 'Please check your login detail');
      }

      throw Failure(
          message: e.response?.statusMessage ?? 'Something went wrong',
          code: e.response?.statusCode,
          exception: e);
    }
  }

}