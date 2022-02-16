
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/remote/network_service.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/signup/signup_response.dart';
import 'package:retrofit/retrofit.dart';

part 'signup_api_service.g.dart';

// Provide SignupApiService
final signupApiServiceProvider = Provider<SignupApiService>((ref) {
  final _dio = ref.watch(provideNetworkService);
  
  return SignupApiService(_dio);
});

// This is a service for signup
@RestApi()
abstract class SignupApiService {

  factory SignupApiService(Dio _dio) => _SignupApiService(_dio);

  @POST('api/register')
  Future<SignupResponse> signup(@Body() SignupRequest request);

}