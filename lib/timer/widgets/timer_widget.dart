import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final int seconds;

  const TimerWidget({Key? key, required this.seconds}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(18.0), child: Text(_getFormattedTime(seconds), maxLines: 1, style: const TextStyle(fontSize: 60)));
  }

  String _getFormattedTime(int time) {
    final int hours = (time / 3600).floor();
    time = time - hours * 3600;

    final int minutes = (time / 60).floor();
    final int seconds = time - minutes * 60;

    final String formattedHours = hours < 10 ? "0$hours" : "$hours";
    final String formattedMinutes = minutes < 10 ? "0$minutes" : "$minutes";
    final String formattedSeconds = seconds < 10 ? "0$seconds" : "$seconds";

    return "$formattedHours:$formattedMinutes:$formattedSeconds";
  }
}
