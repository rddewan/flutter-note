
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_model.freezed.dart';

@immutable
@freezed
abstract class NoteModel with _$NoteModel {

  const factory NoteModel({
    required String title,
    required String body,
    required String status,
    required String createdDate
  }) = _NoteModel;

}