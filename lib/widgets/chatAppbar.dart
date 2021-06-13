import 'package:coms/config/palette.dart';
import 'package:coms/config/styles.dart';
import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget with PreferredSizeWidget {
  final double height = 100;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3.0)]),
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.white70,
          child: Row(children: [
            Expanded(
              flex: 7,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 7,
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
                                    style: Styles.textHeading,
                                    // style: TextStyle(
                                    //     fontSize: 20,
                                    //     fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '@haanyali',
                                    style: Styles.textStyle,
                                    // style:
                                    //     TextStyle(fontStyle: FontStyle.italic),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Photos',
                            ),
                            VerticalDivider(
                              width: 30,
                              color: Palette.primaryTextColorLight,
                            ),
                            Text(
                              'Videos',
                            ),
                            VerticalDivider(
                              width: 30,
                              color: Palette.primaryTextColorLight,
                            ),
                            Text(
                              'Files',
                            ),
                          ],
                        ),
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
                      radius: 30,
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
