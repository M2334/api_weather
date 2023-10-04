import 'dart:io';
import 'package:dio/dio.dart';
class LoginController {
  Future<void> sendData() async {
    print("enter your phone");
    String yourPhone = stdin.readLineSync()!;
    print("enter your password");
    String yourPassword = stdin.readLineSync()!;
    try{
      var response = await Dio()
          .post("https://thimar.amr.aait-d.com/api/login", data: {"phone": yourPhone,
        "password": yourPassword,
        "type" : "android",
        "device_token":"test",
        "user_type" : "client",
      });
    }on DioException catch(ex){
      print(ex.response!.data["message"]);
    }
  }
}
