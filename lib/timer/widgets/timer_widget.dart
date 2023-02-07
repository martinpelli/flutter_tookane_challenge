import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Text('00:00', maxLines: 1, style: TextStyle(fontSize: 60)),
    );
  }
}
