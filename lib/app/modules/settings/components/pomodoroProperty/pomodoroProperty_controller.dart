import 'package:mobx/mobx.dart';

part 'pomodoro_property_controller.g.dart';

class PomodoroPropertyController = _PomodoroPropertyBase
    with _$PomodoroPropertyController;

abstract class _PomodoroPropertyBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
