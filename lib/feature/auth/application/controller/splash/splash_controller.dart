

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:note/feature/auth/application/state/splash/splash_state.dart';
import 'package:note/feature/auth/infrastructure/service/splash_service.dart';
import 'package:note/feature/auth/infrastructure/service/splash_service_impl.dart';

/*
provide the instance of SplashController
*/
final provideSplashController = StateNotifierProvider.autoDispose<SplashController,SplashState>((ref) {
  final _splashService = ref.watch(provideSplashService);

  return SplashController(_splashService, SplashState(authModel: const AsyncValue.loading()))..readAuth();  

});

/*
this class implements StateNotifier
here we controll the state 
when UI generate a event we updat the state 
*/
class SplashController extends StateNotifier<SplashState> {

  final SplashService _splashService;

  SplashController(this._splashService, SplashState state) : super(state);

  /*
  here we try to get the auth model from flutter secure storage
  we update the state of splashState base on the return value
  */
  Future<void> readAuth() async {
    //update state to loading value
    state = state.copyWith(authModel: const AsyncValue.loading());

    final result = await  _splashService.readAuth();
    result.when(
      // when error update state with error value
      (error) => state = state.copyWith(authModel: AsyncValue.error(error)), 
      //when success update state with return value 
      (success) => state = state.copyWith(authModel: AsyncValue.data(success))); 
  }

  
}
