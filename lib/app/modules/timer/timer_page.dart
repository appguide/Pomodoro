import 'package:flutter/material.dart';
import 'package:pomodoro/settings.dart';

class TimerPage extends StatefulWidget {
  final String title;
  const TimerPage({Key key, this.title = "Timer"}) : super(key: key);

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  final settings = Settings();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              "Timer",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
