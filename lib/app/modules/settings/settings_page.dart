import 'package:flutter/material.dart';
import 'package:pomodoro/app/modules/settings/components/pomodoroProperty/pomodoroProperty_widget.dart';
import 'package:pomodoro/settings.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({Key key, this.title = "Settings"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final settings = Settings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    value: true,
                    title: Text("DarkTheme"),
                    onChanged: (value) {},
                  ),
                  PomodoroPropertyWidget(),
                  PomodoroPropertyWidget(),
                  PomodoroPropertyWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
