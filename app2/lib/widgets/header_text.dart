import 'package:app2/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Let's boost your\nbrain power",
            style: TextStyle(
                color: fontColor, fontSize: 26, fontWeight: FontWeight.bold)),
        TextSpan(
            text: " 💫",
            style: TextStyle(
                color: fontColor, fontSize: 20, fontWeight: FontWeight.bold)),
      ])),
    );
  }
}
