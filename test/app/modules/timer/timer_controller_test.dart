import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:pomodoro/app/modules/timer/timer_controller.dart';
import 'package:pomodoro/app/app_module.dart';

void main() {
  initModule(AppModule());
  TimerController timer;

  setUp(() {
    timer = AppModule.to.get<TimerController>();
  });

  group('TimerController Test', () {
    test("First Test", () {
      expect(timer, isInstanceOf<TimerController>());
    });

    test("Set Value", () {
      expect(timer.value, equals(0));
      timer.increment();
      expect(timer.value, equals(1));
    });
  });
}
