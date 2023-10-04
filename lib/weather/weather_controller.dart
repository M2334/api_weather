import 'dart:io';

import 'package:api_weather/weather/our_model.dart';
import 'package:dio/dio.dart';

import 'weather_model.dart';

class WeatherController{
  Future<void> getData()async{
    while(true){
      print("Enter you city want");
      String cityName= stdin.readLineSync()!;
      // سطر يبعت ريكوست
      var response = await Dio().get('https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=509dc5d730ff2dd6003b22f30ae93313');
      //print(response.data);
      //  سطر الى بيحول الداتا
      WeatherData model = WeatherData.fromJson(response.data);
      // سطر بيطبع الداتا
      print(model.name);
    }

  }
}