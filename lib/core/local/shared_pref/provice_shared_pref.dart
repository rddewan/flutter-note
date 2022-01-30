import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/*
provide the instance on SharedPreferences
*/

final provideSharedPreferences = Provider<Future<SharedPreferences>>((ref){
  return  SharedPreferences.getInstance();
});