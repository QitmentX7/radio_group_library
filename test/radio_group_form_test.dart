import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:radio_group_library/main.dart';

void main() {
  testWidgets('RadioGroupForm should show error when validation failed',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final radioTitleFist = find.text('Man');
    final radioTitleSecond = find.text('Woman');
    final button = find.byType(TextButton);
    await tester.tap(button);
    expect(find.text('Please select your gender'), findsOneWidget);
    expect(radioTitleFist, findsOneWidget);
    expect(radioTitleSecond, findsOneWidget);
    expect(button, findsOneWidget);
  });

  testWidgets('RadioGroupForm should not show error when validation succeeded',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final radioTitleFist = find.text('Man');
    final radioTitleSecond = find.text('Woman');

    await tester.tap(radioTitleFist);
    await tester.tap(find.byType(TextButton));
    expect(find.text('Your selected Man gender. Is it correct?'), findsOneWidget);
    await tester.tap(radioTitleSecond);
    await tester.tap(find.byType(TextButton));
    expect(find.text('Your selected Woman gender. Is it correct?'), findsOneWidget);
    expect(find.text('Please choose one option'), findsNothing);
  });
}
