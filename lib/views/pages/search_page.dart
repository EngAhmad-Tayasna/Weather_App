// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_new/models/weather_model.dart';
import 'package:weather_app_new/providers/weather_provider.dart';
import 'package:weather_app_new/services/service_weather.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  String? cityName;

  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search a City"),
        // backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (data) async {
              cityName = data;
              ServicesWeather services = ServicesWeather();

              WeatherModel weather =
                  await services.getWeather(cityName: cityName!);
              Provider.of<WeatherProvider>( context, listen: false).weatherData =
                  weather;
              Navigator.of(context).pop();
            },
            decoration: const InputDecoration(
                hintText: "Enter a City",
                border: OutlineInputBorder(),
                label: Text("search"),
                suffixIcon: Icon(Icons.search),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 32, horizontal: 24)),
          ),
        ),
      ),
    );
  }
}
