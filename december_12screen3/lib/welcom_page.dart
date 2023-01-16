import 'package:december_12screen3/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/img1.png"),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Choose Your',
                style: ApptextStyle.w700s24
                    .copyWith(color: AppStyle.welcomPageTextColor),
                children: <TextSpan>[
                  TextSpan(
                    text: ' BEST',
                    style: TextStyle(
                      color: AppStyle.welcomPageRedColor.withOpacity(0.83),
                    ),
                  ),
                  const TextSpan(text: ' & '),
                  const TextSpan(
                    text: 'SMART',
                    style: TextStyle(
                      color: AppStyle.welcomPagePurpleColor,
                    ),
                  ),
                  const TextSpan(text: '\nHouse'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('i am a', style: ApptextStyle.w400s20),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 305,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Tenant'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyle.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('i am a', style: ApptextStyle.w400s20),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 305,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Landlord'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppStyle.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
