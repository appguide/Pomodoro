import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro/app/modules/statistics/statistics_page.dart';
import 'package:pomodoro/app/modules/timer/timer_page.dart';

import '../statistics/statistics_page.dart';
import '../timer/timer_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Pomodoro"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  int _currentIndex = 0;

  final List<Widget> _pages = [
    TimerPage(),
    StatisticsPage(),
  ];

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
      body: Observer(
        builder: (_) => _pages[homeController.index],
      ),
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
        currentIndex: homeController.index,
        iconSize: 32,
        selectedItemColor: Colors.black,
        onTap: (_currentIndex) => homeController.onTapTapped(_currentIndex),
      ),
    );
  }
}
