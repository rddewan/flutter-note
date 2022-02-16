
import 'package:note/core/local/shared_pref/model/auth_model.dart';

abstract class AuthStorage {
  Future<AuthModel?> read();
  Future<bool> save(AuthModel authModel);
  Future<String?> readAccessToken();
  Future<bool> clear();
}