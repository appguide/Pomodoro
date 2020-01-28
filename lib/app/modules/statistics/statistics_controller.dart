import 'package:mobx/mobx.dart';

part 'statistics_controller.g.dart';

class StatisticsController = _StatisticsBase with _$StatisticsController;

abstract class _StatisticsBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
