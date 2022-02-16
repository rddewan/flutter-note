import 'package:flutter/material.dart';

class NameTextFormFiled extends StatelessWidget {
  const NameTextFormFiled({
    Key? key,
    required String lable,
    required TextEditingController textController,
    required String restorationId
  }) : _lable = lable, _textController = textController, _restorationId = restorationId, super(key: key);

  final String _lable;
  final String _restorationId;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textController,
      restorationId: _restorationId,
      decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: _lable),
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$_lable cannot be empty';
        }
        return null;
      },
    );
  }
}
