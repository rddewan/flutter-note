
import 'package:note/feature/note/domain/model/note_model.dart';
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';

abstract class NoteMapper {

  List<NoteModel> mapToModel(List<NoteResponse> response);

}