import 'package:dio/dio.dart';


class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=85c8ead8ec2d4c9cb92185538221204&q=$city&aqi=no');
    return response.data;

  }
}
