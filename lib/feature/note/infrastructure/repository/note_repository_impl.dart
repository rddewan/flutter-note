

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:note/feature/note/domain/date_converter/date_converter.dart';
import 'package:note/feature/note/domain/mapper/note_mapper.dart';
import 'package:note/feature/note/domain/model/note_model.dart';
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
class NoteRepositoryImpl implements NoteRepository, NoteMapper,DateConverter {
  final NoteApiService _apiService;

  NoteRepositoryImpl(this._apiService);

  @override
  Future<NoteResponse> getNote(int id) {    
    throw UnimplementedError();
  }

  // Get the list of notes
  @override
  Future<List<NoteModel>> getNotes() async {
    try {

      final result = await _apiService.getNotes();

      return mapToModel(result);     

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

  @override
  List<NoteModel> mapToModel(List<NoteResponse> response) {
    return response.map((e) {
      return NoteModel(
        title: e.title, 
        body: e.body, 
        status: e.status, 
        createdDate: getFormattedDate(e.createdAt)
      );
    }).toList();
  }

  @override
  String getFormattedDate(String stringDateTime) {
    final date = DateTime.parse(stringDateTime);

    return DateFormat('d/MM/yyyy hh:m').format(date);    
  }  
  
}