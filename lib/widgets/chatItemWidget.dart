import 'package:flutter/material.dart';
import 'package:coms/config/palette.dart';

import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {
  var index;
  ChatItemWidget({this.index});
  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    'This is a sent message by the user',
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Palette.selfMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.only(right: 10.0),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                        DateTime.fromMicrosecondsSinceEpoch(156588495289)),
                    style: TextStyle(
                        color: Palette.greyColor,
                        fontSize: 12,
                        fontStyle: FontStyle.normal),
                  ),
                  margin: EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: Text(
                    'This is a received message',
                    style: TextStyle(color: Palette.otherMessageColor),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Palette.otherMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.only(left: 10.0),
                )
              ],
            ),
            Container(
              child: Text(
                DateFormat('dd MMM kk:mm')
                    .format(DateTime.fromMicrosecondsSinceEpoch(156588495289)),
                style: TextStyle(
                    color: Palette.greyColor,
                    fontSize: 12,
                    fontStyle: FontStyle.normal),
              ),
              margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
            )
          ],
        ),
      );
    }
  }
}
