class BitcoinModel {
  late String disClaimer, chartName;
  late Time time;
  // late Usd usd;
  // late Bbi bbi;

  BitcoinModel.fromJson(Map<String, dynamic> map) {
    disClaimer = map["disclaimer"];
    chartName = map["chartName"];
    time = Time.fromJson(map["time"]);
    // bbi = Bbi.fromJson(map["bpi"]);
  }
}

class Time {
  late String updated, updatedIso, updatedUk;
  Time.fromJson(Map<String, dynamic> map) {
    updated = map["updated"];
    updatedIso = map["updatedISO"];
    updatedUk = map["updateduk"];
  }
}

class Bbi {
  late Usd usd;
  late Usd gbp;
  late Usd eur;
  Bbi.fromJson(Map<String, dynamic> map) {
    usd = map["USD"];
    gbp = map["GBP"];
    eur = map["EUR"];
  }
}
class Usd {
  late String code, symbol, desc;
  late double rate, rateFloat;
  Usd.fromJson(Map<String, dynamic> map) {
    code = map["code"];
    symbol = map["symbol"];
    desc = map["description"];
    rate = map["rate"];
    rateFloat = map["rate_float"];
  }
}
