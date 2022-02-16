

import 'package:multiple_result/multiple_result.dart';
import 'package:note/util/failure.dart';

abstract class Auth {
  Future<Result<Failure,bool>> clear();
  Future<Result<Failure,String?>> readAccessToken();
}