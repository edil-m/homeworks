import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/my_flutter_app_icons.dart';
import 'package:weather_app/weather_model.dart';
import 'package:weather_app/weather_provaider.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/widgets.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

String apiKey = 'd1f19ec50846ee4054e5dea009a12aed';
String lat = '42.87472';
String lon = '74.61222';

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    final vm = context.watch<WeatherProvider>();
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 35, 3, 116),
            Color.fromARGB(255, 13, 55, 241)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('City'),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.search_outlined),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                  'http://openweathermap.org/img/wn/${vm.model?.weather?[0].icon ?? '01d'}@2x.png'),
              Text(
                ' ${vm.model?.main?.temp ?? '100'}',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 36, 16, 115)),
                height: 50,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.water_drop,
                          color: Colors.blue,
                        ),
                        Text(
                          '${vm.model?.main?.humidity ?? '0'}%',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(MyFlutterApp.wind),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 36, 16, 115)),
                height: 200,
                width: 350,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  vm.getWeather(apiKey: apiKey, lat: lat, lon: lon);
                },
                child: const Text('обновление'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
