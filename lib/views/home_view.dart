import 'package:flutter/material.dart';
import 'package:weather_app_new/widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Weather App'),
      ),
      body: const NoWeatherBody(),
    );
  }
}
