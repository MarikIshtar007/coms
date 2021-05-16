import 'package:coms/config/palette.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool typedText = false;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 8),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(40)),
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    // color: Colors.grey[200]?.withOpacity(0.7),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      // InkWell(
                      //   splashFactory: InkRipple.splashFactory,
                      //   splashColor: Colors.grey.shade200,
                      //   onTap: () {
                      //     print("hey");
                      //   },
                      //   child: Icon(
                      //     Icons.sentiment_satisfied_alt_outlined,
                      //     color: Theme.of(context)
                      //         .textTheme
                      //         .bodyText1
                      //         ?.color
                      //         ?.withOpacity(0.64),
                      //   ),
                      // ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft,
                        icon: Icon(Icons.sentiment_satisfied_alt_outlined),
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
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
                      InkWell(
                        splashFactory: InkRipple.splashFactory,
                        splashColor: Colors.black87,
                        onTap: () {
                          print("hey");
                        },
                        child: Icon(
                          Icons.attach_file,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.64),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        splashFactory: InkRipple.splashFactory,
                        splashColor: Colors.black87,
                        onTap: () {
                          print("hey");
                        },
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(0.64),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // sendMessages();
                },
                child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor.withOpacity(0.8),
                    ),
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.02),
                    child: typedText
                        ? Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                          )
                        : Icon(
                            Icons.mic,
                            color: Colors.white,
                          )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Container(
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
//       width: MediaQuery.of(context).size.width,
//       height: 50.0,
//       decoration: BoxDecoration(
//           border: Border(top: BorderSide(color: Palette.greyColor, width: 0.5)),
//           color: Colors.white),
//       child: Row(
//         children: [
//           Material(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               width: MediaQuery.of(context).size.width * 0.7,
//               margin: EdgeInsets.symmetric(horizontal: 1.0),
//               child: TextField(
//                 style: TextStyle(fontSize: 15.0),
//                 controller: textEditingController,
//                 decoration: InputDecoration.collapsed(
//                     hintText: 'Type a message',
//                     hintStyle: TextStyle(color: Palette.greyColor)),
//               ),
//             ),
//           ),
//           Material(
//             color: Colors.white,
//             child: Container(
//               margin: EdgeInsets.symmetric(horizontal: 8.0),
//               child: IconButton(
//                 icon: Icon(
//                   Icons.send,
//                   color: Colors.black,
//                 ),
//                 onPressed: () {},
//                 color: Palette.primaryColor,
//               ),
//             ),
//           )
//         ],
//       ),
//     );
