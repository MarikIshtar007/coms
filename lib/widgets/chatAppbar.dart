import 'package:coms/config/palette.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget with PreferredSizeWidget {
  final double height = 100;
  @override
  Widget build(BuildContext context) {
    var textHeading =
        TextStyle(color: Palette.primaryTextColorLight, fontSize: 20);
    var textStyle = TextStyle(color: Palette.secondaryTextColorLight);
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3.0)]),
        child: Container(
          color: Colors.white70,
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 70 - width * 0.06,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Haany Ali',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '@haanyali',
                                    style:
                                        TextStyle(fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 23,
                      padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Photos'),
                          VerticalDivider(),
                          Text('Videos'),
                          VerticalDivider(),
                          Text('Files')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  child: Center(
                    child: CircleAvatar(
                      radius: (80 - (width * 0.06)) / 2,
                      child: Text('H'),
                    ),
                  ),
                ))
          ]),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
