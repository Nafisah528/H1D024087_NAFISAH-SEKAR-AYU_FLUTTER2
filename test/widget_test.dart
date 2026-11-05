import 'package:flutter_test/flutter_test.dart';

import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('LoginPage smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and login fields exist.
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Masukkan Username'), findsOneWidget);
    expect(find.text('Masukkan Password'), findsOneWidget);
  });
}
