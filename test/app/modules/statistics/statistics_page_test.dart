import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:pomodoro/app/modules/statistics/statistics_page.dart';

main() {
  testWidgets('StatisticsPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(StatisticsPage(title: 'Statistics')));
    final titleFinder = find.text('Statistics');
    expect(titleFinder, findsOneWidget);
  });
}
