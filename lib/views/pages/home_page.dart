import 'package:flutter/material.dart';
import 'package:weather_app_new/views/pages/search_page.dart';
import 'package:weather_app_new/views/widgets/no_weather_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  SearchPage();
                }));
              },
              icon: const Icon(Icons.search)),
        ],
        backgroundColor: Colors.blue,
        title: const Text('Weather App'),
      ),
      body: const NoWeatherBody(),
    );
  }
}
