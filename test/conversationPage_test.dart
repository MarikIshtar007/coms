import 'package:coms/screens/conversationPage.dart';
import 'package:coms/widgets/chatAppbar.dart';
import 'package:coms/widgets/chatListWidget.dart';
import 'package:coms/widgets/myInputWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(body: ConversationPage()),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(MyInputWidget), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
  });
}
