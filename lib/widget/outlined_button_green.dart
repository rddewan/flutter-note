import 'package:flutter/material.dart';

class OutlinedButtonGreen extends StatelessWidget {
  const OutlinedButtonGreen(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed})
      : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green,
        padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,right: 16.0,left: 16.0)
      ),
        onPressed: onPressed, 
        icon: Icon(icon,color: Colors.white,), 
        label: Text(text,style: const TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}
