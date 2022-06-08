import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({required this.label, required this.tapme});
  String label;
  VoidCallback tapme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tapme();
      },
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
              ),
              child: Text(
                label,
                style: TextStyle(
                    color: Color(0XFF0F1130),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0XFF9296A6),
              size: 16,
            ),
          ],
        ),
        height: 60.0,
        width: 320.0,
        decoration: BoxDecoration(
          color: Color(0XFFD7EEFD),
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: EdgeInsets.only(bottom: 13.0),
      ),
    );
  }
}
