import 'package:flutter/material.dart';

void main() {
  runApp(const ScreenOne());
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ColumnItem(
                  icon: Icon(Icons.width_full_outlined),
                  title: 'Current weigth',
                  unit: '---kgs'),
              SizedBox(
                height: 10,
              ),
              ColumnItem(
                  icon: Icon(Icons.width_full_outlined),
                  title: 'Target Weigth',
                  unit: '---kgs'),
              SizedBox(
                height: 10,
              ),
              ColumnItem(
                  icon: Icon(Icons.height), title: 'Heigth', unit: '---cms'),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.unit,
  }) : super(key: key);

  final String title;
  final Icon icon;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(22, 14, 22, 14),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            offset: const Offset(0, 4),
            blurRadius: 5,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      height: 48,
      width: double.infinity,
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 17,
          ),
          Text(title),
          const Spacer(),
          Text(unit),
        ],
      ),
    );
  }
}
