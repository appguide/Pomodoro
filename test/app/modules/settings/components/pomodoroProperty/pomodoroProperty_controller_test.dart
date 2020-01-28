import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:pomodoro/app/modules/settings/components/pomodoroProperty/pomodoroProperty_controller.dart';
import 'package:pomodoro/app/app_module.dart';

void main() {
  initModule(AppModule());
  PomodoroPropertyController pomodoroproperty;

  setUp(() {
    pomodoroproperty = AppModule.to.get<PomodoroPropertyController>();
  });

  group('PomodoroPropertyController Test', () {
    test("First Test", () {
      expect(pomodoroproperty, isInstanceOf<PomodoroPropertyController>());
    });

    test("Set Value", () {
      expect(pomodoroproperty.value, equals(0));
      pomodoroproperty.increment();
      expect(pomodoroproperty.value, equals(1));
    });
  });
}
