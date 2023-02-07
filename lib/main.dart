import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tookane_challenge/models/ticker_model.dart';
import 'package:flutter_tookane_challenge/timer/bloc/timer_bloc.dart';
import 'package:flutter_tookane_challenge/timer/screens/timer_screen.dart';

void main() => runApp(const TookaneChallengeApp());

class TookaneChallengeApp extends StatelessWidget {
  const TookaneChallengeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TimerBloc(ticker: TickerModel()),
        child: const MaterialApp(debugShowCheckedModeBanner: false, title: 'Tookane Challenge App', home: TimerScreen()));
  }
}
