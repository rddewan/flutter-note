
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/note/application/service/note_service.dart';
import 'package:note/feature/note/domain/model/note_model.dart';
import 'package:note/feature/note/infrastructure/repository/note_repository.dart';
import 'package:note/feature/note/infrastructure/repository/note_repository_impl.dart';
import 'package:note/util/failure.dart';

// Provide NoteService
final noteServiceProvider = Provider<NoteService>((ref) {
  final _repository = ref.watch(noteRepositoryProvider);

  return NoteServiceImpl(_repository);
});

/// Note service @param [NoteRepository]
class NoteServiceImpl extends NoteService {
  final NoteRepository _repository;

  NoteServiceImpl(this._repository);

  @override
  Future<Result<Failure, List<NoteModel>>> getNotes() async {
    try {

      final result = await _repository.getNotes();

      return Success(result);

    } on Failure catch (failure) {
      return Error(failure);
    }
  }
  
}