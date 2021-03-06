
import 'package:note/feature/note/domain/model/note_model.dart';
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';

abstract class NoteRepository {

  Future<List<NoteModel>> getNotes();
  
  Future<NoteResponse> getNote(int id);
}