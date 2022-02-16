

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/feature/splash/application/service/splash_service.dart';
import 'package:note/feature/splash/application/service/splash_service_impl.dart';
import 'package:note/feature/splash/presentation/state/splash_state.dart';


// Provide the instance of SplashController
final provideSplashController = StateNotifierProvider.autoDispose<SplashController,SplashState>((ref) {
  final _authService = ref.watch(provideAuthService);

  return SplashController(_authService, SplashState(authModel: const AsyncValue.loading()))..readAuth();  

});

/// This class implements StateNotifier
/// Here we controll the state 
/// When UI generate a event we updat the state 
class SplashController extends StateNotifier<SplashState> {

  final SplashService _splashService;

  SplashController(this._splashService, SplashState state) : super(state);

  
  // here we try to get the auth model from flutter secure storage
  // update the state of splashState base on the return value  
  Future<void> readAuth() async {
    //update state to loading value
    state = state.copyWith(authModel: const AsyncValue.loading());

    final result = await  _splashService.getAuthModel();
    result.when(
      // when error update state with error value
      (error) => state = state.copyWith(authModel: AsyncValue.error(error)), 
      //when success update state with return value 
      (success) => state = state.copyWith(authModel: AsyncValue.data(success))); 
  }

  
}
