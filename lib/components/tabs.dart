import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  Tabs({required this.caption});
  String caption;
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
          margin: EdgeInsets.only(bottom: 5, top: 20),
        ),
        TextFormField(
          decoration: InputDecoration(
              border: UnderlineInputBorder(), iconColor: Color(0xff9296A6)),
        ),
      ],
    );
  }
}
