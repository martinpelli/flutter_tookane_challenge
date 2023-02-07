import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/ticker_model.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  final TickerModel _ticker;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required TickerModel ticker})
      : _ticker = ticker,
        super(const TimerInitialState()) {
    on<TimerStartEvent>(_timerStart);

    on<TimerTickedEvent>(_timerTicked);

    on<TimerStopEvent>(_timerStop);
  }

  FutureOr<void> _timerStart(TimerStartEvent event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();

    emit(const TimerStartedState());

    _tickerSubscription = _ticker.tick().listen((seconds) => add(TimerTickedEvent(seconds: seconds)));
  }

  FutureOr<void> _timerTicked(TimerTickedEvent event, Emitter<TimerState> emit) {
    emit(TimerTickedState(event.seconds));
  }

  FutureOr<void> _timerStop(TimerStopEvent event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(const TimerInitialState());
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
