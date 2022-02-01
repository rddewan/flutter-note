
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/enviroment/config_reader.dart';
import 'package:note/core/enviroment/enviroment.dart';
import 'package:note/my_app_widget.dart';

Future<void> mainApp(Enviroment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize(env);
  
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(
    // Enabled Riverpod for the entire application
    const ProviderScope(child: MyApp())
  );

}