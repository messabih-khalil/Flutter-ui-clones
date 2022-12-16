import 'package:budget_app_ui/data/colors.dart';
import 'package:flutter/material.dart';
import 'package:budget_app_ui/data/spacing.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(pading_3x),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Howdy, what Are You\nLooking For? 👀",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          // shoping cart
          Container(
            padding: EdgeInsets.all(pading_1x),

            // color: Colors.red,
            child: Icon(
              Icons.shopping_basket,
              color: primaryColor,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
