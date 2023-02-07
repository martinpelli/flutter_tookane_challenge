import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tookane_challenge/timer/widgets/button_widget.dart';
import 'package:flutter_tookane_challenge/timer/widgets/timer_widget.dart';

import '../bloc/timer_bloc.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        width: 280,
        height: 200,
        child: Column(
          children: [
            BlocBuilder<TimerBloc, TimerState>(
              buildWhen: (_, current) => current is TimerTickedState || current is TimerInitialState,
              builder: (context, state) {
                return TimerWidget(seconds: state.seconds);
              },
            ),
            const Spacer(),
            BlocBuilder<TimerBloc, TimerState>(
              buildWhen: (_, current) => current is TimerInitialState || current is TimerStartedState,
              builder: (context, state) {
                final TimerBloc timerBloc = BlocProvider.of<TimerBloc>(context);

                return state is TimerInitialState
                    ? ButtonWidget(text: 'Start', onPressed: () => timerBloc.add(TimerStartEvent()))
                    : ButtonWidget(text: 'Stop', onPressed: () => timerBloc.add(TimerStopEvent()));
              },
            )
          ],
        ),
      )),
    );
  }
}
