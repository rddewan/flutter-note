import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:note/feature/auth/application/service/login/login_service.dart';
import 'package:note/feature/auth/application/service/login/login_service_impl.dart';
import 'package:note/feature/auth/infrastructure/dto/request/login/login_request.dart';
import 'package:note/feature/auth/presentation/controller/login/login_controller.dart';



class MockLoginService extends Mock implements LoginService{}

void main() {
  late LoginService mockedLoginService;
  late ProviderContainer container; 
  final loginRequest = LoginRequest(email: 'demo201@gmail.com', password: '12345678');

  setUp((){
    mockedLoginService = MockLoginService();
    container = ProviderContainer(overrides: [
      loginServiceProvider.overrideWithValue(mockedLoginService),
    ]);   

  });

  tearDown(() {
    container.dispose();
  });

  group('LoginControllerTests', () {

    test('Given login detail When login Then should return true', () async {

      when(() => mockedLoginService.login(loginRequest))
          .thenAnswer((invocation) => Future.value(const Success(true))          
      );

      container.read(loginControllerProvider.notifier)
        .login(loginRequest);

      await container.read(loginControllerProvider.notifier)
        .stream.firstWhere((state) => state.isLogedin is AsyncData);
      
      //debugPrint((container.read(loginControllerProvider).isLogedin.value.toString()));
      expect(container.read(loginControllerProvider).isLogedin.value, true);

    });

  });


}

