import 'package:api_weather/bitcoin/bitcoin_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class BitcoinController{
  Future<void> getData()async{
    var response = await Dio().get("https://api.coindesk.com/v1/bpi/currentprice.json");
//print("*************${response.data}**************");
     final model = BitcoinModel.fromJson(response.data);
    print(model.time);

  }
}