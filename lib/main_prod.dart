import 'package:note/core/environment/environment.dart';
import 'package:note/main_app.dart';

Future<void> main() async {
  await mainApp(Environment.prod);
}