import 'package:flutter/material.dart';
import 'package:offline_banking/pin_input/sports_gaming_pin.dart';
import 'components/bank_dropdowns.dart';
import 'components/tabs.dart';
import 'components/network_dropdowns.dart';

class SportsAndGaming extends StatelessWidget {
  static const String id = 'sports_gaming';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF9F9F9),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 29,
          right: 27,
        ),
        child: Column(
          children: [
            BankDropDown(caption: 'Choose your bank', height: 26),
            Tabs(caption: 'User ID'),
            DropDownView(caption: 'Sporting/Gaming', height: 20),
            Tabs(caption: 'Amount (₦)'),
            SizedBox(height: 60),
            Material(
              color: Color(0xff1E2F67),
              borderRadius: BorderRadius.circular(6),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, SportsAndGamingPin.id);
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                minWidth: 321,
                height: 56,
              ),
            )
          ],
        ),
      ),
    );
  }
}
