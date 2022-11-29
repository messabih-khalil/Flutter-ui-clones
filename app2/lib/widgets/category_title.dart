import 'package:app2/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTail extends StatelessWidget {
  final String leftText;
  final String rightText;

  const CategoryTail(this.leftText, this.rightText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            rightText,
            style:
                TextStyle(color: fontColorLight, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
