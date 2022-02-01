
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/enviroment/config_reader.dart';
import 'package:note/core/enviroment/enviroment.dart';
import 'package:note/my_app_widget.dart';

Future<void> mainApp(Enviroment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize(env);

  runApp(
    // Enabled Riverpod for the entire application
    const ProviderScope(child: MyApp())
  );

}