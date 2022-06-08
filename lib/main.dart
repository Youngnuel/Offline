import 'package:flutter/material.dart';
import 'package:offline_banking/pin_input/airtime_pin.dart';
import 'package:offline_banking/pin_input/cabletv_pin.dart';
import 'pin_input/requestmoney_pin.dart';
import 'pin_input/sports_gaming_pin.dart';
import 'pin_input/buy_data_pin.dart';
import 'pin_input/transfer_pin.dart';
import 'package:offline_banking/buy_airtime.dart';
import 'package:offline_banking/buy_data.dart';
import 'package:offline_banking/cable_tv.dart';
import 'package:offline_banking/request_money.dart';
import 'package:offline_banking/sports_gaming.dart';
import 'package:offline_banking/transfer_money.dart';
import 'request_money_share.dart';
import 'offline_banking.dart';

void main() {
  runApp(BankingApp());
}

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: OfflineBanking.id,
      routes: {
        OfflineBanking.id: (context) => OfflineBanking(),
        BuyAirtime.id: (context) => BuyAirtime(),
        BuyData.id: (context) => BuyData(),
        CableTv.id: (context) => CableTv(),
        RequestMoney.id: (context) => RequestMoney(),
        SportsAndGaming.id: (context) => SportsAndGaming(),
        TransferMoney.id: (context) => TransferMoney(),
        AirtimePin.id: (context) => AirtimePin(),
        RequestMoneyShare.id: (context) => RequestMoneyShare(),
        RequestMoneyPin.id: (context) => RequestMoneyPin(),
        CableTvPin.id: (context) => CableTvPin(),
        SportsAndGamingPin.id: (context) => SportsAndGamingPin(),
        BuyDataPin.id: (context) => BuyDataPin(),
        TransferPin.id: (context) => TransferPin(),
      },
    );
  }
}
