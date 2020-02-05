import 'package:mobx/mobx.dart';

part 'clock_controller.g.dart';

class ClockController = _ClockBase with _$ClockController;

abstract class _ClockBase with Store {
  @observable
  int value = 25;

  @action
  void increment() {
    value++;
  }
}
