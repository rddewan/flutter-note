

import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/note/domain/model/note_model.dart';
import 'package:note/util/failure.dart';

abstract class NoteService {
  Future<Result<Failure,List<NoteModel>>> getNotes();
}