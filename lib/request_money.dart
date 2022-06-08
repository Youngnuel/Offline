import 'package:flutter/material.dart';
import 'package:offline_banking/pin_input/requestmoney_pin.dart';
import 'components/bank_dropdowns.dart';
import 'components/tabs.dart';

class RequestMoney extends StatelessWidget {
  static const String id = 'request_money';
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
            Tabs(caption: 'Your Account Number'),
            Tabs(caption: 'Recipient Phone Number'),
            BankDropDown(caption: 'Recipient Bank Name', height: 20),
            Tabs(caption: 'Amount (₦)'),
            Tabs(caption: 'Description'),
            SizedBox(height: 60),
            Material(
              color: Color(0xff1E2F67),
              borderRadius: BorderRadius.circular(6),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, RequestMoneyPin.id);
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
