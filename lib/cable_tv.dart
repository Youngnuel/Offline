import 'package:flutter/material.dart';
import 'package:offline_banking/pin_input/cabletv_pin.dart';
import 'components/bank_dropdowns.dart';
import 'components/tabs.dart';
import 'components/network_dropdowns.dart';

class CableTv extends StatelessWidget {
  static const String id = 'cable_tv';
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
            Tabs(caption: 'Smart Card Number'),
            DropDownView(caption: 'Cable Tv', height: 20),
            DropDownView(caption: 'Bouquet', height: 20),
            Tabs(caption: 'Amount (₦)'),
            SizedBox(height: 60),
            Material(
              color: Color(0xff1E2F67),
              borderRadius: BorderRadius.circular(6),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, CableTvPin.id);
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
