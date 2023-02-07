import 'package:flutter/material.dart';
import 'package:flutter_tookane_challenge/timer/widgets/button_widget.dart';
import 'package:flutter_tookane_challenge/timer/widgets/timer_widget.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          children: const [TimerWidget(), Spacer(), ButtonWidget()],
        ),
      )),
    );
  }
}
