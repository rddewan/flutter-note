
import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/environment/config_reader.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage_impl.dart';

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
      _AuthInterceptor(ref.watch(authStorageProvider))
    ]);

  return _dio;

});

class _AuthInterceptor extends Interceptor {
  final AuthStorage _authStorage;

  _AuthInterceptor(this._authStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async  {

    // Get the access token from secure storage
    // if the access token is not null the set the request header Authorization
   final accessToken = await  _authStorage.readAccessToken();
   if (accessToken != null) {
      options.headers['Accept'] = 'application/json';    
      options.headers['Authorization'] = accessToken;
    }
    else {
      options.headers['Accept'] = 'application/json';
    }
    super.onRequest(options, handler);
  }
}