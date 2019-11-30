import 'dart:async';

import 'package:flutter/widgets.dart';

class TimerText extends StatefulWidget {

	final Stopwatch stopwatch;

	TimerText({this.stopwatch});

	TimerTextState createState() => TimerTextState(stopwatch: stopwatch);

}

class TimerTextState extends State<TimerText> {

	Timer timer;
	final Stopwatch stopwatch;

	TimerTextState({this.stopwatch}) {
		timer = Timer.periodic(Duration(milliseconds: 30), refreshTimer);
	}

	void refreshTimer(Timer timer) {
		if (stopwatch.isRunning) {
			setState(() {
				//
			});
		}
	}

	String durationToString(Duration duration) {

		String hours = duration.inHours.toString().padLeft(2, '0');
		String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
		String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

		return '$hours:$minutes:$seconds';
	}

	@override
	Widget build(BuildContext buildContext) {
		return Text(
			durationToString(stopwatch.elapsed),
			style: TextStyle(fontSize: 96, fontWeight: FontWeight.w200),
		);
	}

}