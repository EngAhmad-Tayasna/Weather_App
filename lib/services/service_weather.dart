import "dart:convert";

import "package:http/http.dart" as http;
import "package:weather_app_new/models/weather_model.dart";

class ServicesWeather {
  String baseUrl = "http://api.weatherapi.com/v1";
  String apiKey = "05aa46ba9df5435e8f4154238240512";

  Future<WeatherModel> getWeather({required String cityName}) async {
    Uri url =
        Uri.parse("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7");
    http.Response response = await http.get(url);

    Map<String, dynamic> data = jsonDecode(response.body);  

    WeatherModel weather = WeatherModel.fromJson(data);

    return weather;
  }
}
