import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pomodoro/app/modules/timer/components/clock/clock_widget.dart';

main() {
  testWidgets('ClockWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ClockWidget()));
    final textFinder = find.text('Clock');
    expect(textFinder, findsOneWidget);
  });
}
