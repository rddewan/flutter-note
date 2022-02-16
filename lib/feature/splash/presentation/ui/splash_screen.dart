
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:note/core/local/shared_pref/model/auth_model.dart';
import 'package:note/core/route/name_route.dart';
import 'package:note/feature/splash/presentation/controller/splash_controller.dart';
import 'package:note/feature/splash/presentation/state/splash_state.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen to a provider (provideSplashController) and call listener whenever its value changes.
    ref.listen<SplashState>(provideSplashController,(previous,next) {      
      next.authModel.when(
        data: (data) {
          AuthModel? authModel = data;
          if (authModel != null) {
            context.goNamed(homeNameRoute);
          } else {
            context.goNamed(loginNameRoute);
          }
          
        },
        error: (e,s) {
          return Center(child: Text(e.toString()));
        },
        loading: () => null
      );
    });

    return const Center(
      child: CircularProgressIndicator(color: Colors.white,),
    );
    
  }
}