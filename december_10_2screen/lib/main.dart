import 'dart:ui';

import 'package:december_10/first_page.dart';
import 'package:december_10/twoScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TwoScreen());
}

class TwoScreen extends StatelessWidget {
  const TwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}
