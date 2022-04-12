// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';

import '../main.dart';
import '../pages/widgets/nba_stat_list.dart';

testWidgets(description, callback) {
  testWidgets("Flutter Widget Test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    var textField = find.byType(NbaStatListWidget);
    expect(textField, findsOneWidget);
    await tester.enterText(textField, 'Flutter Devs');
    expect(find.text('Flutter Devs'), findsOneWidget);
    print('Flutter Devs');

    var button = find.text("Reverse Text");
    expect(button, findsOneWidget);
    print('Reverse Text');
    await tester.tap(button);
    await tester.pump();

    expect(find.text("sveD rettulF"), findsOneWidget);
    print('sveD rettulF');
  });
}
