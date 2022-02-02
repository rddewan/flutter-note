
import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/environment/config_reader.dart';
import 'package:note/feature/auth/infrastructure/service/auth_service.dart';
import 'package:note/feature/auth/infrastructure/service/auth_service_impl.dart';

/*
 provide the instance of Dio 
*/
final provideNetworkService = Provider<Dio>((ref) {
  final options = BaseOptions(
    baseUrl: ConfigReader.getBaseUrl(),
    connectTimeout: 1000 * 60,
    sendTimeout: 1000 * 60,
    receiveTimeout: 1000 * 60,     
  );

  final _dio = Dio(options)
    ..interceptors.addAll([
      HttpFormatter(),
      _AuthInterceptor(ref.watch(provideAuthService))
    ]);

  return _dio;

});

class _AuthInterceptor extends Interceptor {
  final AuthService _authService;

  _AuthInterceptor(this._authService);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    /*
    get the acess token from secure storage
    if the access token is not null the set the request header Authorization
    */
    _authService.getAuthModel()
      .then((value) {
        value.when(
          (error) => null, 
          (success) {
            if (success != null) {
              options.headers['Authorization'] = 'Bearer ${success.accessToken}';
            }
          });
      });

    super.onRequest(options, handler);
  }
}