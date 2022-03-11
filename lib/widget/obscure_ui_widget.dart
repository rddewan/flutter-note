
import 'package:flutter/material.dart';

class ObscureUIWidget extends StatefulWidget {
  const ObscureUIWidget({Key? key, required this.child}) : super(key: key);

  final Widget? child;

  @override
  State<ObscureUIWidget> createState() => _ObscureUIWidgetState();
}

class _ObscureUIWidgetState extends State<ObscureUIWidget> with WidgetsBindingObserver{

  bool _inForeground = true;

  @override
  void initState() {    
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if (_inForeground) {
      return widget.child!;
    }
    else {
      return const ColoredBox(color: Colors.black);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {   
    
    switch (state) {
      case AppLifecycleState.inactive:
        setState(() {
          _inForeground = true;
        });
        break;
      case AppLifecycleState.paused:
        setState(() {
          _inForeground = false;
        });
        break;
      case AppLifecycleState.resumed:
        setState(() {
          _inForeground = true;
        });
        break;
      case AppLifecycleState.detached:
        setState(() {
          _inForeground = false;
        });
        break;
      default:
        break;
    }
  }
}