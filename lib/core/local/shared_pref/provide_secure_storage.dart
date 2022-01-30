
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/*
provide the instance of FlutterSecureStorage
*/

final provideFlutterSecureStorage = Provider<FlutterSecureStorage>((ref){
  return const FlutterSecureStorage();
});