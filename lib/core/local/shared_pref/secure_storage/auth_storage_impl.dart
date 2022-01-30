

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/core/local/shared_pref/provide_secure_storage.dart';
import 'package:note/core/local/shared_pref/secure_storage/auth_storage.dart';
import 'package:note/util/failure.dart';

/*
provide the instance of AuthStorage
*/
final provideAuthStorage = Provider<AuthStorage>((ref) {
  final _flutterSecureStorage = ref.watch(provideFlutterSecureStorage);
  return AuthStorageImpl(_flutterSecureStorage);
});

/*
  this calss extends AuthStorage to implement its functionality
  usage : store - read - clear the auth model in and from FlutterSecureStorage
*/
class AuthStorageImpl extends AuthStorage {

  final FlutterSecureStorage _flutterSecureStorage;

  AuthStorageImpl(this._flutterSecureStorage);

  AuthModel? _authModel;
  
  @override
  Future<bool> clear() async {
    try {
      //clear cache version
      _authModel = null;
      // clear the flutter secure storage - this will delete everyting in secure storage
      _flutterSecureStorage.deleteAll();
      return true;
    }catch (_) {
      return false;
    }    
  }

  @override
  Future<AuthModel?> read() async {
    //return the cache version os authmodel if not null
    if (_authModel != null) {
      return _authModel;
    }

    //get the access token form flutter storage
    // it will be null when user have not loged in or user logout
    final accessToken = await _flutterSecureStorage.read(key: 'access_token');
    if (accessToken == null) {
      return null;
    }
    //create a json from flutter secure storage
    final json = <String, dynamic>{};
    json['access_token'] = await _flutterSecureStorage.read(key: 'access_token');
    json['token_id'] = await _flutterSecureStorage.read(key: 'token_id');
    json['user_id'] = await _flutterSecureStorage.read(key: 'user_id');
    json['name'] = await _flutterSecureStorage.read(key: 'name');
    json['email'] = await _flutterSecureStorage.read(key: 'email');
    //store the the auth mode to cache version to access later without reading it
    _authModel = AuthModel.fromJson(json);

    return _authModel;
  }

  @override
  Future<bool> save(AuthModel authModel) async {
    try {
      //save to cache version so we can access it without reading it
      _authModel = authModel;

      // write to flutter secure storage
      _flutterSecureStorage.write(key: 'access_token', value: authModel.accessToken);
      _flutterSecureStorage.write(key: 'token_id', value: authModel.tokenId);
      _flutterSecureStorage.write(key: 'user_id', value: authModel.userId.toString());
      _flutterSecureStorage.write(key: 'name', value: authModel.name);
      _flutterSecureStorage.write(key: 'email', value: authModel.email);

      return true;

    } on PlatformException catch (e) {
      throw Failure(message: e.details);
    }
  }

}