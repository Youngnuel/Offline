import 'package:flutter/material.dart';

class BankDropDown extends StatelessWidget {
  BankDropDown({required this.caption, required this.height});
  String caption;
  double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            caption,
            style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                color: Color(0xff0F1130)),
          ),
          margin: EdgeInsets.only(bottom: 5, top: height),
        ),
        DropdownButtonFormField<String>(
          onTap: () {},
          items: [
            DropdownMenuItem(
              child: Text('ACCESS BANK'),
              value: 'ACCESS BANK',
            ),
            DropdownMenuItem(
              child: Text('UBA'),
              value: 'UBA',
            ),
            DropdownMenuItem(
              child: Text('FIRST BANK'),
              value: 'FIRST BANK',
            ),
            DropdownMenuItem(
              child: Text('ZENITH BANK'),
              value: 'ZENITH BANK',
            ),
          ],
          onChanged: (value) {},
          borderRadius: BorderRadius.circular(6),
        )
      ],
    );
  }
}
