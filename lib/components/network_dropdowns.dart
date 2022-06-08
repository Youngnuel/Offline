import 'dart:ffi';

import 'package:flutter/material.dart';

class DropDownView extends StatelessWidget {
  DropDownView({required this.caption, required this.height});
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
              child: Text('MTN'),
              value: 'MTN',
            ),
            DropdownMenuItem(
              child: Text('GLO'),
              value: 'GLO',
            ),
            DropdownMenuItem(
              child: Text('9MOBILE'),
              value: '9MOBILE',
            ),
          ],
          onChanged: (value) {},
          borderRadius: BorderRadius.circular(6),
        )
      ],
    );
  }
}
