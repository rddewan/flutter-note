import 'package:note/core/enviroment/enviroment.dart';
import 'package:note/main_app.dart';

Future<void> main() async {
  await mainApp(Enviroment.prod);
}