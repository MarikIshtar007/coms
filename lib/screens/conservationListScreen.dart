import 'package:flutter/material.dart';
import 'conversationPage.dart';

class ConversationListScreen extends StatefulWidget {
  @override
  _ConversationListScreenState createState() => _ConversationListScreenState();
}

class _ConversationListScreenState extends State<ConversationListScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
}
