
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:note/core/route/name_route.dart';
import 'package:note/feature/auth/presentation/ui/login/login_screen.dart';
import 'package:note/feature/auth/presentation/ui/signup/signup_screen.dart';
import 'package:note/feature/home/presentation/ui/home_screen.dart';
import 'package:note/feature/setting/presentation/ui/setting_screen.dart';
import 'package:note/feature/splash/presentation/ui/splash_screen.dart';
import 'package:note/widget/error/error_screen.dart';

abstract class AppRouter {  
 
  static GoRouter router(WidgetRef ref){   
    return GoRouter(
      //initialLocation: '/',
      urlPathStrategy: UrlPathStrategy.path,      
      routes: [
        GoRoute(    
          name: defaultNameRoute,    
          path: defaultRoute,
          builder: (context,state) => const SplashScreen(),
        ),
        GoRoute(
          name: loginNameRoute,
          path: loginRoute,
          builder: (context,state) => const LoginScreen(),          
          routes: [
            GoRoute(
              name: signupNameRoute,
              path: signupRoute,
              pageBuilder: (context,state) => CustomTransitionPage<void>(
                child: const SignupScreen(), 
                transitionsBuilder: (_,animation,__,child) =>
                  SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(0.25, 0.25),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeIn)),
                  ),
                  child: child),
                ) ,
            ),
            
          ]
        ),        
        GoRoute(
          name: homeNameRoute,
          path: homeRoute,
          pageBuilder: (context,state) => CustomTransitionPage<void>(
            child: const HomeScreen(), 
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              ScaleTransition(scale: animation, child: child),
          ),
          routes: [
            GoRoute(
              name: settingNameRoute,
              path: settingRoute,
              pageBuilder: (context,state) => CustomTransitionPage<void>(
                //restorationId: 'signup_screen',
                child: const SettingScreen(), 
                transitionsBuilder: (_,animation,__,child) =>
                  SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(0.25, 0.25),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeIn)),
                  ),
                  child: child),
                ) ,
            ),
          ]
        ),
        
      ],
      restorationScopeId: 'router',
      errorBuilder: (context,state) => ErrorScreen(exception: state.error)
    );

  }
      
    

  }
