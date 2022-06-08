import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SportsAndGamingPin extends StatelessWidget {
  static const String id = 'sports_gaming_pin';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffF9F9F9),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 28,
            right: 27,
            bottom: 100,
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Text(
                    'Enter your PIN',
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0F1130)),
                  ),
                  margin: EdgeInsets.only(bottom: 29, top: 36),
                ),
                Container(
                  child: Text(
                    'Sporting/Gaming',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0F1130),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 4),
                ),
                Container(
                  child: Text(
                    'Biller & No.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff9296A6),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 12),
                ),
                Container(
                  child: Text(
                    'Amount',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0F1130),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                ),
                Pinput(
                  obscureText: true,
                ),
                Container(
                  child: Text(
                    'Bank',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0F1130),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 13),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
