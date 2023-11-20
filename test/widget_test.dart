import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TaskManagerApp', () {
    testWidgets('renders title', (tester) async {
      // Pump the widget tree
      await tester.pumpWidget(MaterialApp());

      // Find the title widget
      final titleFinder = find.text('Task Manager');

      // Expect the title to be displayed
      expect(titleFinder, findsOneWidget);
    });

    testWidgets('renders task list', (tester) async {
      // Pump the widget tree
      await tester.pumpWidget(MaterialApp());

      // Find the task list widget
      final taskListFinder = find.byType(ListView);

      // Expect the task list to be displayed
      expect(taskListFinder, findsOneWidget);
    });
  });
}
