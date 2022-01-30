import 'package:flutter/material.dart';
import 'package:note/util/device_info.dart';

class OrangeGradientButton extends StatelessWidget {
  const OrangeGradientButton({
    Key? key,
    required this.text,
    required this.onTapCallBack,
  }) : super(key: key);

  final String text;
  final VoidCallback onTapCallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      alignment: Alignment.center, 
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: const Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xfffbb448), Color(0xfff7892b)])),
      child: GestureDetector(
        onTap: onTapCallBack,
        child: Text(text,
            style: const TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
