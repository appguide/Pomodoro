import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:pomodoro/app/modules/timer/components/clock/clock_controller.dart';
import 'package:pomodoro/app/app_module.dart';

void main() {
  initModule(AppModule());
  ClockController clock;

  setUp(() {
    clock = AppModule.to.get<ClockController>();
  });

  group('ClockController Test', () {
    test("First Test", () {
      expect(clock, isInstanceOf<ClockController>());
    });

    test("Set Value", () {
      expect(clock.value, equals(0));
      clock.increment();
      expect(clock.value, equals(1));
    });
  });
}
