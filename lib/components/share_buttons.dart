import 'package:flutter/material.dart';
import 'package:offline_banking/request_money.dart';

class ShareButtons extends StatelessWidget {
  ShareButtons(
      {required this.IconsButton,
      required this.width,
      required this.height,
      required this.tapthis});
  var IconsButton;
  double width;
  double height;
  VoidCallback tapthis;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Color(0xff1E2F67),
        borderRadius: BorderRadius.circular(6),
        child: MaterialButton(
          onPressed: () {
            tapthis();
          },
          child: Icon(
            IconsButton,
            color: Colors.white,
          ),
          minWidth: width,
          height: height,
        ),
      ),
    );
  }
}
