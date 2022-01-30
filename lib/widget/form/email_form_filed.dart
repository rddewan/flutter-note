import 'package:flutter/material.dart';
import 'package:note/util/email_validator.dart';


class EmailTextFormFiled extends StatelessWidget {
  const EmailTextFormFiled({
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
      decoration:
          InputDecoration(border: const OutlineInputBorder(), labelText: lable),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$lable cannot be empty';
        }
        if (!isValidEmail(textController.text)) {
          return '$lable is not valid';
        }
      },
    );
  }
}
