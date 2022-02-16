

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/remote/network_service.dart';
import 'package:note/feature/note/infrastructure/dto/response/note_response.dart';
import 'package:retrofit/retrofit.dart';

part 'note_api_service.g.dart';

// Provide NoteApiService
final noteApiServiceProvider = Provider<NoteApiService>((ref) {
  final _dio = ref.watch(provideNetworkService);

  return NoteApiService(_dio);
});

@RestApi()
abstract class NoteApiService {

  factory NoteApiService(Dio _dio) => _NoteApiService(_dio);

  @GET('api/task/get_all_task')
  Future<List<NoteResponse>> getNotes();


}