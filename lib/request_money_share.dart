import 'package:flutter/material.dart';
import 'package:offline_banking/offline_banking.dart';
import 'request_money.dart';
import 'main.dart';
import 'components/share_buttons.dart';

class RequestMoneyShare extends StatelessWidget {
  static const String id = 'request_money_share';

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
                    'Request Money',
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0F1130)),
                  ),
                  margin: EdgeInsets.only(bottom: 29, top: 36),
                ),
                Container(
                  child: Text(
                    'Loan',
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
                    'Bank & Account no.',
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
                  margin: EdgeInsets.only(bottom: 108),
                ),
                Container(
                  child: Text(
                    'Share request link',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0F1130),
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 14),
                ),
                Row(
                  children: [
                    ShareButtons(
                        tapthis: () {
                          Navigator.popAndPushNamed(context, OfflineBanking.id);
                        },
                        IconsButton: Icons.message_outlined,
                        width: 65,
                        height: 51),
                    Spacer(),
                    ShareButtons(
                        tapthis: () {
                          Navigator.popAndPushNamed(context, OfflineBanking.id);
                        },
                        IconsButton: Icons.whatsapp_outlined,
                        width: 120,
                        height: 51),
                    Spacer(),
                    ShareButtons(
                        tapthis: () {
                          Navigator.popAndPushNamed(context, OfflineBanking.id);
                        },
                        IconsButton: Icons.copy_outlined,
                        width: 65,
                        height: 51),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
