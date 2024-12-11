import "package:http/http.dart" as http;

class ServicesWeather {
  Future<void> getWeather({required String cityName}) async {
    Uri url = Uri.parse(
        "http://api.weatherapi.com/v1/current.json?key=05aa46ba9df5435e8f4154238240512&q=London&aqi=no");
    http.Response response = await http.get(url);
  }
}
