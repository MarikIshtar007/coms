import 'package:coms/widgets/chatAppbar.dart';
import 'package:coms/widgets/chatListWidget.dart';
import 'package:coms/widgets/conversationBottomSheet.dart';
import 'package:coms/widgets/myInputWidget.dart';
import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild?.unfocus();
          }
        },
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    color: Color(0xFFF9F9F9),
                    child: ChatListWidget(),
                  ),
                  SizedBox.fromSize(
                    size: Size.fromHeight(100),
                    child: ChatAppBar(),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onPanUpdate: (details) {
                if (details.delta.dy > 0) {
                  _scaffoldKey.currentState
                      ?.showBottomSheet((context) => ConversationBottomSheet());
                }
              },
              child: MyInputWidget(),
            )
          ],
        ),
      ),
    ));
  }
}
