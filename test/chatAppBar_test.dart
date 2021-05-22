import 'package:coms/widgets/chatAppbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(body: ChatAppBar()),
  );
  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.text('Haany Ali'), findsOneWidget);
    expect(find.text('@haanyali'), findsOneWidget);
    expect(find.text('Photos'), findsOneWidget);
    expect(find.text('Videos'), findsOneWidget);
    expect(find.text('Files'), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
