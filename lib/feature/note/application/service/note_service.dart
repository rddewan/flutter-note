

import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';
import 'package:note/util/failure.dart';

abstract class NoteService {
  Future<Result<Failure,List<NoteResponse>>> getNotes();
}