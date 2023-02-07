part of 'timer_bloc.dart';

@immutable
abstract class TimerEvent {
  const TimerEvent();
}

class TimerStartEvent extends TimerEvent {}

class TimerStopEvent extends TimerEvent {}

class TimerTickedEvent extends TimerEvent {
  final int seconds;

  const TimerTickedEvent({required this.seconds});
}
