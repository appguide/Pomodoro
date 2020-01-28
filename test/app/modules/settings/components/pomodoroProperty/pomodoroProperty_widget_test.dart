import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pomodoro/app/modules/settings/components/pomodoroProperty/pomodoroProperty_widget.dart';

main() {
  testWidgets('PomodoroPropertyWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PomodoroPropertyWidget()));
    final textFinder = find.text('PomodoroProperty');
    expect(textFinder, findsOneWidget);
  });
}
