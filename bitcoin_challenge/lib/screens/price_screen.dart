import 'package:bitcoinchallenge/services/crypto_data.dart';
import 'package:flutter/material.dart';
import 'package:bitcoinchallenge/services/coin_data';
import 'package:flutter/cupertino.dart';
import 'package:bitcoinchallenge/utilitaries/card_coin.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectCurrency = 'BRL';

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItem = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(
          currency,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        value: currency,
      );
      dropdownItem.add(newItem);
    }

    return DropdownButton<String>(
      value: selectCurrency,
      items: dropdownItem,
      onChanged: (value) {
        setState(() {
          selectCurrency = value;
          getData();
        });
      },
    );
  }

  CupertinoPicker iOSPicker() {
    List<Text> textItem = [];
    for (String currency in currenciesList) {
      var newItem = Text(currency);
      textItem.add(newItem);
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 45.0,
      onSelectedItemChanged: (selectedIndex) {
        setState(() {
          selectCurrency = currenciesList[selectedIndex];
          getData();
        });
      },
      children: textItem,
    );
  }

  Map<String, String> coinValues = {};

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    try {
      var data = await CryptoCoinData().getCryptoCoin(selectCurrency);
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards = [];
    for (String crypto in cryptoList) {
      cryptoCards.add(CryptoCard(
        cryptoCurrency: crypto,
        selectedCurrency: selectCurrency,
        value: coinValues[crypto],
      ));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          makeCards(),
          Expanded(
            child: SizedBox(),
          ),
          Container(
            height: 100.0,
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: Platform.isAndroid ? androidDropdown() : iOSPicker(),
          ),
        ],
      ),
    );
  }
}

