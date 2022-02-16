
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_response.freezed.dart';
part 'note_response.g.dart';

@immutable
@freezed
abstract class NoteResponse with _$NoteResponse {
  @JsonSerializable()
  factory NoteResponse({
    required String id,
    @JsonKey(name: 'user_id')
    required String userId,
    required String title,
    required String body,
    required String note,
    required String status,
    @JsonKey(name: 'created_at')
    required String createdAt,
    @JsonKey(name: 'updated_at')
    required String updatedAt,

  }) = _NoteResponse;

  factory NoteResponse.fromJson(Map<String,dynamic> json) => _$NoteResponseFromJson(json);

}