
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/auth/application/service/signup/signup_service.dart';
import 'package:note/feature/auth/application/service/signup/signup_service_impl.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/infrastructure/dto/response/signup/signup_response.dart';
import 'package:note/feature/auth/presentation/controller/signup/signup_controller.dart';
import 'package:note/util/failure.dart';

class MockSignupService extends Mock implements SignupServiceImpl{}
void main() {
  late SignupService mockedSignupService;
  late ProviderContainer container;

  final SignupRequest request = SignupRequest(
    name: 'name', 
    email: 'email', 
    password: 'password', 
    confirmPassword: 'password'
  );

  final SignupResponse response = SignupResponse(
    name: 'test', 
    email: 'test@gmail.com', 
    updatedAt: '2022-02-18 07:26:08', 
    createdAt: '2022-02-18 07:26:08', 
    id: 1
  );
  

  setUp(() {
    mockedSignupService = MockSignupService();
    container = ProviderContainer(
      overrides: [
        signupServiceProvider.overrideWithValue(mockedSignupService)
      ]
    );

  });

  tearDown(() {
    container.dispose();
  });

  group('SignupControllerTests', () {

    test('Given signup detail When signup Then return SignupResponse and isSignup state should be true', () async {

      // Using the mocked class call the method and then return the faked response
      when(() => mockedSignupService.signup(request))      
        .thenAnswer((invocation) => Future.value(Success(response)));

      // Call the signup method in controller
      container.read(signupControllerProvider.notifier).signup(request);
      
      // Read the state
      await container.read(signupControllerProvider.notifier)
        .stream.firstWhere((state) => state.isSignup is AsyncData);    

      //debugPrint(container.read(signupControllerProvider).isSignup.value.toString());
      expect(container.read(signupControllerProvider).isSignup.value, true);
     
    });

    test('Given signup detail When signup Then return error and isSignup state should be error', () async {

      // Using the mocked class call the method and then return fake error 
      when((() => mockedSignupService.signup(request)))
        .thenAnswer((invocation) => Future.value(Error(Failure(message: 'Something went wrong'))));

      // call the signup method in controller 
      container.read(signupControllerProvider.notifier).signup(request);

      // Assert  isSignup state is loading
      expect(container.read(signupControllerProvider.notifier).state.isSignup, const AsyncLoading<bool>());

      await container.read(signupControllerProvider.notifier)
        .stream.firstWhere((state) => state.isSignup is AsyncError);

      //debugPrint(container.read(signupControllerProvider.notifier).state.isSignup.toString());  

      // Assert isSignup state is error
      final expected = container.read(signupControllerProvider.notifier).state.isSignup;
      expect(expected is AsyncError, true);

    });

  }); 

}