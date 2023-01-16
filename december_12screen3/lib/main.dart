import 'package:december_12screen3/register_page.dart';
import 'package:december_12screen3/sing_app.dart';
import 'package:december_12screen3/welcom_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp3Screen());
}

class MyApp3Screen extends StatelessWidget {
  const MyApp3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SingApp());
  }
}
