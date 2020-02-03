import 'package:pomodoro/app/modules/settings/settings_page.dart';
import 'package:pomodoro/app/modules/statistics/statistics_controller.dart';
import 'package:pomodoro/app/modules/statistics/statistics_page.dart';
import 'package:pomodoro/app/modules/timer/timer_controller.dart';
import 'package:pomodoro/app/modules/settings/settings_controller.dart';
import 'package:pomodoro/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/app/app_widget.dart';
import 'package:pomodoro/app/modules/home/home_module.dart';
import 'package:pomodoro/app/modules/timer/timer_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => StatisticsController()),
        Bind((i) => TimerController()),
        Bind((i) => SettingsController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router("/timer", child: (_, args) => TimerPage()),
        Router("/statistics", child: (_, args) => StatisticsPage()),
        Router("/settings", child: (_, args) => SettingsPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
