import 'package:flutter/material.dart';
import 'package:pomodoro/app/modules/timer/components/clock/clock_widget.dart';
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
          child: ClockWidget(),
        ),
      ],
    );
  }
}
