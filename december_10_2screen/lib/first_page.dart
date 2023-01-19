import 'dart:ui';

import 'package:december_10/twoScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            child: const Text(
              'skip',
              style: TextStyle(color: Colors.grey),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage()),
              );
            },
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/Hi.png"),
            const SizedBox(
              height: 113,
            ),
            const Text(
              'Welcom!',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            const Text(
              'There are so many things you have to \n experience in your life...',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
