import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../statistics/statistics_page.dart';
import '../timer/timer_page.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  int index = 0;

  @action
  void onTapTapped(currentIndex) {
    index = currentIndex;
  }
}
