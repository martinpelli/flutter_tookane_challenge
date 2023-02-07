import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const ButtonWidget({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed, child: Text(text, style: const TextStyle(fontSize: 30)));
  }
}
