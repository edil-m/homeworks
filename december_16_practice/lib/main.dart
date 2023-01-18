import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() {
  runApp(
    const MyWidget(),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ButtonClick();
  }
}

class ButtonClick extends StatefulWidget {
  const ButtonClick({super.key});

  @override
  State<ButtonClick> createState() => _ButtonClickState();
}

double blurRadius = 3;
double spreadRadius = 3;
bool _isPressed = false;
bool _isPressedOne = false;
bool _isPressedTwo = false;
double blueRadiusOne = 3;
double blueRadiusTwo = 3;
double spreadRadiusOne = 3;
double spreadRadiusTwo = 3;

class _ButtonClickState extends State<ButtonClick> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                height: 108,
                width: 98,
                duration: const Duration(milliseconds: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: blurRadius,
                      spreadRadius: spreadRadius,
                    ),
                  ],
                ),
                child: InkWell(
                  onTapUp: (_) {
                    blurRadius = 3;
                    spreadRadius = 2;
                    setState(() {
                      _isPressed = !_isPressed;
                    });
                  },
                  onTapDown: (_) {
                    spreadRadius = 0;
                    blurRadius = 0;
                    setState(() {
                      _isPressed = false;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _isPressed ? Colors.grey[300] : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: const [
                          Text(
                            'Beginer',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '0 - 6',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('months')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              AnimatedContainer(
                height: 108,
                width: 98,
                duration: const Duration(milliseconds: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: blueRadiusOne,
                        spreadRadius: spreadRadiusOne),
                  ],
                ),
                child: InkWell(
                  onTapUp: (_) {
                    blueRadiusOne = 3;
                    spreadRadiusOne = 2;
                    setState(() {
                      _isPressedOne = !_isPressedOne;
                    });
                  },
                  onTapDown: (_) {
                    spreadRadiusOne = 0;
                    blueRadiusOne = 0;
                    setState(() {
                      _isPressedOne = false;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _isPressedOne ? Colors.grey[300] : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(9),
                      child: Column(
                        children: const [
                          Text(
                            'Intermediate',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '6 - 18',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('months')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              AnimatedContainer(
                height: 108,
                width: 98,
                duration: const Duration(milliseconds: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: blueRadiusTwo,
                        spreadRadius: spreadRadiusTwo),
                  ],
                ),
                child: InkWell(
                  onTapUp: (_) {
                    blueRadiusTwo = 3;
                    spreadRadiusTwo = 2;
                    setState(() {
                      _isPressedTwo = !_isPressedTwo;
                    });
                  },
                  onTapDown: (_) {
                    spreadRadiusTwo = 0;
                    blueRadiusTwo = 0;
                    setState(() {
                      _isPressedTwo = false;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _isPressedTwo ? Colors.grey[300] : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(9),
                      child: Column(
                        children: const [
                          Text(
                            'Advanced',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '18+',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('months')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
