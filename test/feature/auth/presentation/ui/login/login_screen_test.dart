import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:note/feature/auth/application/service/login/login_service.dart';
import 'package:note/feature/auth/presentation/controller/login/login_controller.dart';
import 'package:note/feature/auth/presentation/state/login/login_state.dart';
import 'package:note/feature/auth/presentation/ui/login/login_screen.dart';
import 'package:note/feature/home/presentation/ui/home_screen.dart';

class MockLoginService extends Mock implements LoginService{}
void main() {
  late LoginService mockedLoginservice;

  setUp(() {
    mockedLoginservice = MockLoginService();

  });

  Widget testingWidget() {
    return const ProviderScope(
      child: MaterialApp(
        home: LoginScreen(),
      ));
  }

  Widget homeWidgets(StateNotifierProvider<LoginController,LoginState> mockProvider) {
    return ProviderScope(
      overrides: [
        loginControllerProvider.overrideWithProvider(mockProvider),
      ],
      child: const MaterialApp(
        home: LoginScreen(),
      ));
  }

  group('Login screen test', () {

    testWidgets('description', (tester) async {
      final mockLoginControllerProvider = StateNotifierProvider<LoginController,LoginState>((ref) {
        return LoginController(mockedLoginservice, LoginState(isLogedin: const AsyncValue.loading()));
      });

      await tester.pumpWidget( MaterialApp(
        home: HomeScreen() ,
      )
      );

      //expect(find.text("Don't have a account? | "), findsOneWidget);

    });
   

    
  });
}