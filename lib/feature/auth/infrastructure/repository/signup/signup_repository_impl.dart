

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/signup/signup_response.dart';
import 'package:note/feature/auth/infrastructure/remote_service/signup/signup_api_service.dart';
import 'package:note/feature/auth/infrastructure/repository/signup/signup_repository.dart';
import 'package:note/util/failure.dart';

// Provide the SignupRepository
final signupRepositoryProvider = Provider<SignupRepository>((ref) {
  final _apiService = ref.watch(signupApiServiceProvider);

  return SignupRepositoryImpl(_apiService);
});

/// This is a repository class for signup
/// [@param SignupApiService]
class SignupRepositoryImpl extends SignupRepository {
  final SignupApiService _apiService;

  SignupRepositoryImpl(this._apiService);
  
  @override
  Future<SignupResponse> signup(SignupRequest request) async {
    try {

      return await _apiService.signup(request);

    } on DioError catch (e) {

      if (e.error is SocketException) {
        throw Failure(message: e.message);
      }

      if (e.response?.statusCode == 422) {
        throw Failure(message: e.response?.data.toString() ?? '');
      }

      throw Failure(
          message: e.response?.statusMessage ?? 'Something went wrong',
          code: e.response?.statusCode,
          exception: e);
      
    }   
    
  }
  
}