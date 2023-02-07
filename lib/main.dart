import 'package:flutter/material.dart';
import 'package:flutter_tookane_challenge/timer/screens/timer_screen.dart';

void main() => runApp(const TookaneChallengeApp());

class TookaneChallengeApp extends StatelessWidget {
  const TookaneChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, title: 'Tookane Challenge App', home: TimerScreen());
  }
}
