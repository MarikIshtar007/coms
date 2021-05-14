import 'package:coms/widgets/chatAppbar.dart';
import 'package:coms/widgets/chatListWidget.dart';
import 'package:coms/widgets/inputWidget.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  color: Colors.grey[200],
                  child: ChatListWidget(),
                ),
                SizedBox.fromSize(
                  size: Size.fromHeight(100),
                  child: ChatAppBar(),
                )
              ],
            ),
          ),
          InputWidget()
        ],
      ),
    ));
  }
}
