import 'package:coms/widgets/chatItemWidget.dart';
import 'package:flutter/material.dart';

class ChatListWidget extends StatefulWidget {
  @override
  _ChatListWidgetState createState() => _ChatListWidgetState();
}

class _ChatListWidgetState extends State<ChatListWidget> {
  final ScrollController listScrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
        itemBuilder: (context, index) => ChatItemWidget(index: index),
      ),
    );
  }
}
