import 'package:flutter_test/flutter_test.dart';

import 'package:memotag_dashboard/main.dart';
void main() {
  testWidgets('MemoTag app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const MemoTagApp());

    expect(find.text('Login'), findsOneWidget);
  });
}
