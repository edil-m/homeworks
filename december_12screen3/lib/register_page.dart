import 'package:december_12screen3/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.blue,
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: (Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcom onbord!',
                style: ApptextStyle.w500s24,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Let’s help you meet up your best tenant\n or landlord",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Log in or sign up'),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  hintText: 'Enter your phone number',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: SizedBox(
                  width: 305,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Continue'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppStyle.welcomPageTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
              const Text('or'),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/google.png'),
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset('assets/more.png'),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                'By continuing, you agree to our\nTerms of Service Privacy Policy\nContent Policy',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
