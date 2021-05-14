import 'package:coms/config/palette.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Palette.greyColor, width: 0.5)),
          color: Colors.white),
      child: Row(
        children: [
          Material(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width * 0.7,
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                controller: textEditingController,
                decoration: InputDecoration.collapsed(
                    hintText: 'Type a message',
                    hintStyle: TextStyle(color: Palette.greyColor)),
              ),
            ),
          ),
          Material(
            color: Colors.white,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
                onPressed: () {},
                color: Palette.primaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
