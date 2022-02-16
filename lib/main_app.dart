
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/core/environment/config_reader.dart';
import 'package:note/core/environment/environment.dart';
import 'package:note/main_widget.dart';

Future<void> mainApp(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize(env);
  
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(
    const RootRestorationScope(
      restorationId: 'root', 
      child: ProviderScope(
        child: MainWidget()
      )
    )
  );

}