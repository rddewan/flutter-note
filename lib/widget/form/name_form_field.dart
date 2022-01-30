import 'package:flutter/material.dart';

class NameTextFormFiled extends StatelessWidget {
  const NameTextFormFiled({
    Key? key,
    required this.lable,
    required this.textController,
  }) : super(key: key);

  final String lable;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: lable),
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$lable cannot be empty';
        }
      },
    );
  }
}
