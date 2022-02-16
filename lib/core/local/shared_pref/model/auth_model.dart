
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@immutable
@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel(
    {
      @JsonKey(name: 'access_token')
      required String accessToken,
      @JsonKey(name: 'token_id')
      required String tokenId,
      @JsonKey(name: 'user_id')
      required int userId,
      required String name,
      required String email
    }
  ) = _AuthModel;

  factory AuthModel.fromJson(Map<String,dynamic> json) => _$AuthModelFromJson(json);
  
}