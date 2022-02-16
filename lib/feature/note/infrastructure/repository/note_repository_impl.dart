

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';
import 'package:note/feature/note/infrastructure/remote_service/note_api_service.dart';
import 'package:note/feature/note/infrastructure/repository/note_repository.dart';
import 'package:note/util/failure.dart';

// Provide NoteRepository
final noteRepositoryProvider = Provider<NoteRepository>((ref) {
  final _apiService = ref.watch(noteApiServiceProvider);

  return NoteRepositoryImpl(_apiService);
});

/// Repository class @param [NoteApiService]
class NoteRepositoryImpl extends NoteRepository {
  final NoteApiService _apiService;

  NoteRepositoryImpl(this._apiService);

  @override
  Future<NoteResponse> getNote(int id) {
    // TODO: implement getNote
    throw UnimplementedError();
  }

  // Get the list of notes
  @override
  Future<List<NoteResponse>> getNotes() async {
    try {

      return await _apiService.getNotes();

    } on DioError catch (e) {
      
      if (e.error == SocketException) {
        throw Failure(message: e.message);
      }

      throw Failure(
        message: e.response?.statusMessage ?? 'Something went wrong',
        code: e.response?.statusCode,
        exception: e
      );
    }
  }
  
}