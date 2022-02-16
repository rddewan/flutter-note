

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/auth/application/service/login/login_service.dart';
import 'package:note/feature/auth/application/service/login/login_service_impl.dart';
import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/feature/auth/presentation/state/login/login_state.dart';

// Provide LoginController
final loginControllerProvider = StateNotifierProvider<LoginController,LoginState>((ref) {
  final _service = ref.watch(loginServiceProvider);

  return LoginController(_service, LoginState(isLogedin: const AsyncValue.loading()));
});

// An observable class that stores a single immutable [state].
class LoginController extends StateNotifier<LoginState> {
  final LoginService _service;

  LoginController(this._service, LoginState state) : super(state);

  Future<void> login(LoginRequest request) async {
    state = state.copyWith(isLogedin: const AsyncValue.loading(),isLoading: true);

    final result = await _service.login(request);
    result.when(
      (error) => state = state.copyWith(isLogedin: AsyncValue.error(error),isLoading: false), 
      (success) => state = state.copyWith(isLogedin: AsyncValue.data(success),isLoading: false));

  }

}