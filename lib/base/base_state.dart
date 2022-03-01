import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {

  AppLocalizations get translations => AppLocalizations.of(context)!;

}