

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/auth/application/service/auth/auth_service.dart';
import 'package:note/feature/auth/application/service/auth/auth_service_impl.dart';
import 'package:note/feature/auth/presentation/state/signout/signout_state.dart';

// Provide SignoutController
final signoutControllerProvider = StateNotifierProvider.autoDispose<SignoutController,SignoutState>((ref) {
  final _auth = ref.watch(authServiceProvider);

  return  SignoutController(_auth, SignoutState(isLogout: const AsyncValue.loading()));
});


class SignoutController extends StateNotifier<SignoutState> {
  final AuthService _authService;
  
  SignoutController(this._authService, SignoutState state) : super(state);

  Future<void> signout() async {
    
    state = state.copyWith(isLogout: const AsyncValue.loading());

    final result = await _authService.clear();
    result.when(
      (error) => state =state.copyWith(isLogout: AsyncValue.error(error)), 
      (success) => state = state.copyWith(isLogout: AsyncValue.data(success)));
  }

}