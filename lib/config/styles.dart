import 'package:coms/config/palette.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle textHeading =
      TextStyle(color: Palette.primaryTextColorLight, fontSize: 20);
  static TextStyle textStyle =
      TextStyle(color: Palette.secondaryTextColorLight, fontSize: 14);
  static TextStyle subHeading =
      TextStyle(color: Palette.primaryTextColorLight, fontSize: 14);
  static TextStyle text = TextStyle(color: Palette.secondaryTextColor);
  static TextStyle subText = TextStyle(color: Palette.greyColor);
  static TextStyle date = TextStyle(
      color: Palette.greyColor, fontSize: 12.0, fontStyle: FontStyle.normal);
}
