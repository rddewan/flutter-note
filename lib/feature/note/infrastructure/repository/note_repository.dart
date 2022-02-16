
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';

abstract class NoteRepository {

  Future<List<NoteResponse>> getNotes();
  
  Future<NoteResponse> getNote(int id);
}