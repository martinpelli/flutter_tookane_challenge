import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {}, child: const Text('Start', style: TextStyle(fontSize: 30)));
  }
}
