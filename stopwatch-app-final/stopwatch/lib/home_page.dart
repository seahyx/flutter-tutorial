import 'package:flutter/material.dart';
import 'package:stopwatch/timer_text.dart';

class HomePage extends StatefulWidget {
	HomePage({Key key, this.title}) : super(key: key);

	final String title;

	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

	Stopwatch stopwatch = Stopwatch();

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Stopwatch'),
			),
			body: Column(
				children: <Widget>[
					SizedBox(
						child: Center(
							child: TimerText(stopwatch: stopwatch,),
						),
						height: 300,
					),
					Row(
						children: <Widget>[
							Container(
								child: FittedBox(
									child: FloatingActionButton(
										onPressed: () {
											setState(() {
												stopwatch.reset();
												if (stopwatch.isRunning) stopwatch.stop();
											});
										},
										child: Icon(Icons.stop),
										backgroundColor: Colors.red[400],
									),
								),
								width: 75,
								height: 75,
							),
							Container(
								child: FittedBox(
									child: FloatingActionButton(
										onPressed: () {
											setState(() {
												if (stopwatch.isRunning) {
													stopwatch.stop();
												} else {
													stopwatch.start();
												}
											});
										},
										child: Icon(stopwatch.isRunning ? Icons.pause : Icons.play_arrow),
										backgroundColor: stopwatch.isRunning ? Colors.orange : Colors.green[400],
									),
								),
								width: 75,
								height: 75,
							),
						],
						mainAxisAlignment: MainAxisAlignment.spaceEvenly,
					),
				],
			)
		);
	}
}