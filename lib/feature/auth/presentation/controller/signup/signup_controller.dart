

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/auth/application/service/signup/signup_service.dart';
import 'package:note/feature/auth/application/service/signup/signup_service_impl.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/presentation/state/signup/signup_state.dart';

// Provide SignupController
final signupControllerProvider = StateNotifierProvider.autoDispose<SignupController,SignupState>((ref) {
  final _service = ref.watch(signupServiceProvider);
  
  return SignupController(_service, SignupState(isSignup: const AsyncValue.loading()));
});

// An observable class that stores a single immutable [state].
class SignupController extends StateNotifier<SignupState> {
  final SignupService _service;

  SignupController(this._service, SignupState state) : super(state);

  Future<void> signup(SignupRequest request) async {
    
    state = state.copyWith(
      isSignup: const AsyncValue.loading(), isLoading: true
    );

    final result  = await  _service.signup(request);
    result.when(
      (error) => state = state.copyWith(isSignup: AsyncValue.error(error), isLoading: false), 
      (success) => state = state.copyWith(isSignup: const AsyncValue.data(true), isLoading: false));

  }
}