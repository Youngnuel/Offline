import 'package:flutter/material.dart';
import 'package:offline_banking/components/bank_dropdowns.dart';
import 'components/tabs.dart';
import 'components/network_dropdowns.dart';
import 'pin_input/airtime_pin.dart';

class BuyAirtime extends StatelessWidget {
  static const String id = 'buy_airtime';
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
            DropDownView(caption: 'Network Provider', height: 20),
            Tabs(
              caption: 'Phone Number',
            ),
            Tabs(
              caption: 'Amount (₦)',
            ),
            SizedBox(height: 60),
            Material(
              color: Color(0xff1E2F67),
              borderRadius: BorderRadius.circular(6),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, AirtimePin.id);
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
