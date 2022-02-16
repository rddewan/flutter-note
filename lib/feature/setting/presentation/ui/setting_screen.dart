
import 'package:flutter/material.dart';
import 'package:note/widget/main_scaffold.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      'Setting', 
      Column(), 
      null
    );
  }
}