

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/auth/domain/auth/auth.dart';
import 'package:note/feature/auth/domain/auth/auth_impl.dart';
import 'package:note/feature/auth/presentation/state/signout/signout_state.dart';

// Provide SignoutController
final signoutControllerProvider = StateNotifierProvider.autoDispose<SignoutController,SignoutState>((ref) {
  final _auth = ref.watch(authProvider);

  return  SignoutController(_auth, SignoutState(isLogout: const AsyncValue.loading()));
});


class SignoutController extends StateNotifier<SignoutState> {
  final Auth _auth;
  
  SignoutController(this._auth, SignoutState state) : super(state);

  Future<void> signout() async {
    
    state = state.copyWith(isLogout: const AsyncValue.loading());

    final result = await _auth.clear();
    result.when(
      (error) => state =state.copyWith(isLogout: AsyncValue.error(error)), 
      (success) => state = state.copyWith(isLogout: AsyncValue.data(success)));
  }

}