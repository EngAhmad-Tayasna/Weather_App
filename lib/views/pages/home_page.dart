import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_new/models/weather_model.dart';
import 'package:weather_app_new/providers/weather_provider.dart';
import 'package:weather_app_new/views/pages/search_page.dart';
import 'package:weather_app_new/views/widgets/no_weather_body.dart';
import 'package:weather_app_new/views/widgets/weather_info_body.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
              icon: const Icon(Icons.search)),
        ],
        backgroundColor: Colors.blue,
        title: const Text('Weather App'),
      ),
      body: Provider.of<WeatherProvider>(context).weatherData == null ? const NoWeatherBody() : const WeatherInfoBody(),
    );
  }
}
