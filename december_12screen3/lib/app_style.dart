import 'package:flutter/animation.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';

abstract class AppStyle {
  static const Color welcomPageTextColor = Color(0xff0E99D4);
  static const Color welcomPageRedColor = Color(0xffD41A0E);
  static const Color welcomPagePurpleColor = Color(0xff5043E3);
  static const Color buttonColor = Color(0xff0E99D5);
}

abstract class ApptextStyle {
  static const TextStyle w700s24 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700);
  static const TextStyle w400s20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static const TextStyle w500s24 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w500);
}
