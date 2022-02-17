
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/note/application/service/note_service.dart';
import 'package:note/feature/note/application/service/note_service_impl.dart';
import 'package:note/feature/note/presentation/state/note_state.dart';

// Provide NoteController
final noteControllerProvider = StateNotifierProvider.autoDispose<NoteController,NoteState>((ref) {
  final _noteService = ref.watch(noteServiceProvider);

  return NoteController(_noteService, NoteState(notes: const AsyncValue.loading()));
});

/// This class controll the state 
/// When UI generate events -> like button click , this events will change some state 
/// Controller will update the state and when state has changed any UI listening to this state will get updated
class NoteController extends StateNotifier<NoteState> {
  final NoteService _noteService;

  NoteController(this._noteService, NoteState state) : super(state);

  Future<void> getNotes() async {
    state = state.copyWith(notes: const AsyncValue.loading(), isLoading: true);

    final result = await _noteService.getNotes();
    result.when(
      (error) => state = state.copyWith(notes: AsyncValue.error(error), isLoading: false), 
      (success) => state = state.copyWith(notes: AsyncValue.data(success), isLoading: false));

  }
  
}