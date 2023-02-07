part of 'timer_bloc.dart';

@immutable
abstract class TimerState {
  final int seconds;

  const TimerState({required this.seconds});
}

class TimerInitialState extends TimerState {
  const TimerInitialState() : super(seconds: 0);
}

class TimerStartedState extends TimerState {
  const TimerStartedState() : super(seconds: 0);
}

class TimerTickedState extends TimerState {
  const TimerTickedState(int time) : super(seconds: time);
}
