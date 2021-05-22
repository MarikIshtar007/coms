import 'package:coms/config/palette.dart';
import 'package:flutter/material.dart';

class MyInputWidget extends StatefulWidget {
  @override
  _MyInputWidgetState createState() => _MyInputWidgetState();
}

class _MyInputWidgetState extends State<MyInputWidget> {
  bool typedText = false;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var ratio = MediaQuery.of(context).orientation == Orientation.portrait
        ? (size.height) / (size.width)
        : (size.width) / (size.height);
    return Container(
      width: size.width,
      margin: EdgeInsets.only(
        left: size.width * 0.04,
        right: size.width * 0.04,
        bottom: size.width * 0.018,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: size.width * 0.02),
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                        vertical: size.width * 0.02),
                    child: Icon(Icons.sentiment_satisfied_alt_outlined,
                        size: ratio * 11, color: Color(0xFF070707)),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.01,
                          vertical: size.width * 0.02),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: ratio * 7),
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.send,
                        cursorColor: Palette.selfMessageBackgroundColor,
                        minLines: 1,
                        maxLines: 100,
                        controller: textEditingController,
                        onChanged: (value) {
                          setState(() {
                            if (value.isEmpty) {
                              typedText = false;
                            } else {
                              typedText = true;
                            }
                          });
                        },
                        decoration: InputDecoration.collapsed(
                          hintText: "Type your message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.image)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // sendMessages();
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                ),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: typedText
                    ? Icon(
                        Icons.send_rounded,
                        color: Colors.white,
                        size: ratio * 11,
                      )
                    : Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: ratio * 11,
                      )),
          )
        ],
      ),
    );
  }
}
