import 'package:flutter/material.dart';
import 'package:offline_banking/buy_airtime.dart';
import 'package:offline_banking/buy_data.dart';
import 'package:offline_banking/cable_tv.dart';
import 'package:offline_banking/request_money.dart';
import 'package:offline_banking/sports_gaming.dart';
import 'package:offline_banking/transfer_money.dart';
import 'components/buttons.dart';
import 'main.dart';

class OfflineBanking extends StatefulWidget {
  static const String id = 'offline_banking';
  @override
  State<OfflineBanking> createState() => _OfflineBankingState();
}

class _OfflineBankingState extends State<OfflineBanking> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Offline Banking',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 17.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xffF9F9F9),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 28,
            right: 27,
            bottom: 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'What USSD transaction would you like to do?',
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500),
                ),
                margin: EdgeInsets.only(bottom: 6, top: 26),
              ),
              Container(
                child: Text(
                  'Make transfers, utility payments, buying of airtime and data bundles using USSD',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff383838),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 26),
              ),
              Expanded(
                  child: Buttons(
                label: 'Transfer Money',
                tapme: () {
                  Navigator.pushNamed(context, TransferMoney.id);
                },
              )),
              Expanded(
                  child: Buttons(
                label: 'Request Money',
                tapme: () {
                  Navigator.pushNamed(context, RequestMoney.id);
                },
              )),
              Expanded(
                  child: Buttons(
                label: 'Buy Data',
                tapme: () {
                  Navigator.pushNamed(context, BuyData.id);
                },
              )),
              Expanded(
                  child: Buttons(
                label: 'Buy Airtime',
                tapme: () {
                  Navigator.pushNamed(context, BuyAirtime.id);
                },
              )),
              Expanded(
                  child: Buttons(
                      label: 'Cable TV',
                      tapme: () {
                        Navigator.pushNamed(context, CableTv.id);
                      })),
              Expanded(
                  child: Buttons(
                label: 'Sport and Gaming',
                tapme: () {
                  Navigator.pushNamed(context, SportsAndGaming.id);
                },
              )),
            ],
          ),
        ),
      ),
    );
  }
}
