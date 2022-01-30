
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@immutable
@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel(
    {
      required String accessToken,
      required String tokenId,
      required int userId,
      required String name,
      required String email
    }
  ) = _AuthModel;

  factory AuthModel.fromJson(Map<String,dynamic> json) => _$AuthModelFromJson(json);
  
}