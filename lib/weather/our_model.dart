class WeatherData{
late String base,name;
late int dt,visability,timeZone,id,code;
late Cord cord;
late List <Weather> weather;
late Main main;
late Wind wind;
late Clouds clouds;
late Sys sys;
WeatherData.fromJson(Map<String,dynamic>map){
  base = map ['base'];
  dt = map ['dt'];
  visability = map ['visibility'];
  timeZone = map ['timezone'];
  id = map ['id'];
  name = map ['name'];
  code = map ['cod'];
  wind = Wind.fromJson(map['wind']);
  sys = Sys.fromJson(map['sys']);
  clouds = Clouds.fromJson(map['clouds']);
  main = Main.fromJson(map['main']);
  cord = Cord.fromJson(map['corrd']);
  weather = List.from(map['weather']).map((e) => Weather.fromJson(e)).toList();

}

}
class Cord{
  late double lat,lon;
  Cord.fromJson(Map<String,dynamic>map){
    lat = map['lat'];
    lat = map['lon'];
  }
}
class Weather{
  late String desc,main,icon;
  late int id;
  Weather.fromJson(Map<String,dynamic>myMap){
    desc = myMap['description'];
    main = myMap['main'];
    icon = myMap['icon'];
    id = myMap['id'];
  }
}
class Main{
late double temp,feels,min,max;
late int humidity,pressure;
Main.fromJson(Map<String,dynamic>minMap){
  temp = minMap['temp'];
  feels = minMap['feels_like'];
  min = minMap['temp_min'];
  max = minMap['temp_max'];
  pressure = minMap['pressure'];
  humidity = minMap['humidity'];
}
}
class Wind{
  late double speed;
  late int degree;
  Wind.fromJson(Map<String,dynamic>map){
    speed = map['speed'];
    degree = map['deg'];
  }
}
class Clouds{
  late int all;
  Clouds.fromJson(Map<String,dynamic>map){
    all = map['all'];
  }
}
class Sys{
  late int type,id,sunrise,sunset;
  late String countryName;
  Sys.fromJson(Map<String,dynamic>map){
    type = map['type'];
    id = map['id'];
    sunrise = map['sunrise'];
    sunset = map['sunset'];
    countryName = map['country'];
  }
}