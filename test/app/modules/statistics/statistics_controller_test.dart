import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:pomodoro/app/modules/statistics/statistics_controller.dart';
import 'package:pomodoro/app/app_module.dart';

void main() {
  initModule(AppModule());
  StatisticsController statistics;

  setUp(() {
    statistics = AppModule.to.get<StatisticsController>();
  });

  group('StatisticsController Test', () {
    test("First Test", () {
      expect(statistics, isInstanceOf<StatisticsController>());
    });

    test("Set Value", () {
      expect(statistics.value, equals(0));
      statistics.increment();
      expect(statistics.value, equals(1));
    });
  });
}
