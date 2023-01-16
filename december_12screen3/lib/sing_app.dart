import 'package:december_12screen3/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingApp extends StatelessWidget {
  const SingApp({super.key});

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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('SIGN UP', style: ApptextStyle.w500s24),
              SizedBox(height: 30),
              const Text('Just entry your personal details'),
              const Padding(
                padding: EdgeInsets.all(21),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    hintText: 'Enter your full name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(21),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(21),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    hintText: 'Enter password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(21),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    hintText: 'Confirm password',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: SizedBox(
                  width: 305,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('continue'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppStyle.welcomPageTextColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
