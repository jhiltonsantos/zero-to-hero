import 'package:bitcoinchallenge/services/coin_data';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CryptoCoinData {
  Future getCryptoCoin(String currentCoin) async {
    Map<String, String> cryptoCoins = {};

    for (String crypto in cryptoList) {
      String url =
          'https://api.bitcointrade.com.br/v3/public/$currentCoin$crypto/ticker';
      http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        var price = decodedData['data']['buy'];
        print(price);
        cryptoCoins[crypto] = price.toStringAsFixed(0);
      } else {
        print(response.statusCode);
      }
    }
    return cryptoCoins;
  }
}
