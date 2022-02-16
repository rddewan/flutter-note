
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note/core/route/name_route.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? exception;
  const ErrorScreen({
    Key? key,
    this.exception,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SelectableText(exception.toString()),
            TextButton(
              onPressed: () => context.goNamed(defaultNameRoute), 
              child: const Text('Home'))
          ],
        ),
      ),
    );
  }
}
