import 'package:mobx/mobx.dart';

part 'timer_controller.g.dart';

class TimerController = _TimerBase with _$TimerController;

abstract class _TimerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
