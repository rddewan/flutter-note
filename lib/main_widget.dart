import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note/base/base_consumer_state.dart';
import 'package:note/core/route/router.dart';
import 'package:note/i18n/i18n.dart';
import 'package:note/util/app_const.dart';
import 'package:note/util/theme_data.dart';

class MainWidget extends ConsumerStatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends BaseConsumerState<MainWidget> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {       
    return MaterialApp.router(
      restorationScopeId: 'main',
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter.router(ref).routeInformationParser, 
      routerDelegate: AppRouter.router(ref).routerDelegate,   
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocales.supportedLocales,
      locale: const Locale('en',''),
      title: appTitle,
      theme: appThemeData(context),
      // initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
  
}

