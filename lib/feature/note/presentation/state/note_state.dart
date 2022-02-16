
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';

part 'note_state.freezed.dart';

@freezed
@immutable
abstract class NoteState with _$NoteState{

  factory NoteState({
    required AsyncValue<List<NoteResponse>> notes,
    @Default(false) bool isLoading
  }) = _NoteState;

}