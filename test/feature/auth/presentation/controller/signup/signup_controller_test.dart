import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:note/feature/auth/application/service/signup/signup_service.dart';
import 'package:note/feature/auth/application/service/signup/signup_service_impl.dart';
import 'package:note/feature/auth/infrastructure/dto/request/signup/signup_request.dart';
import 'package:note/feature/auth/presentation/controller/signup/signup_controller.dart';

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

    test('Given signup detail When signup Then should return signup response', () async {

     
    });

  });

}