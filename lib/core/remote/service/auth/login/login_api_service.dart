
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/remote/model/request/auth/login/login_request.dart';
import 'package:note/core/remote/model/response/auth/login/login_response.dart';
import 'package:note/core/remote/service/network_service.dart';
import 'package:retrofit/retrofit.dart';

 part 'login_api_service.g.dart';

/*
provide the instance of LoginApiService
*/
final provideLoginApiService = Provider<LoginApiService>((ref) {
  final dio = ref.watch(provideNetworkService);

  return LoginApiService(dio);
});

/*
this is a service  for login
*/
@RestApi()
abstract class LoginApiService {

  factory LoginApiService(Dio dio) =>  _LoginApiService(dio);

  @POST('/api/login')
  Future<LoginResponse> login (@Body() LoginRequest request);

}