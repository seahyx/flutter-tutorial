import 'package:flutter/material.dart';
import 'package:stopwatch/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

		return MaterialApp(
			title: 'Stopwatch',
			theme: ThemeData(
				brightness: Brightness.dark,
				colorScheme: ColorScheme.dark(),
				primarySwatch: Colors.blue,
				accentColor: Colors.pink,
				
			),
			home: HomePage(title: 'Stopwatch'),
		);
	}
}
