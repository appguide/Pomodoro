import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro/app/modules/statistics/statistics_page.dart';
import 'package:pomodoro/app/modules/timer/timer_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Pomodoro"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Modular.to.pushNamed('/settings');
            },
            child: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: index == 0 ? TimerPage() : StatisticsPage(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.av_timer,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.timeline,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: 0,
        iconSize: 32,
        selectedItemColor: Colors.black,
        onTap: (_) {},
      ),
    );
  }
}
