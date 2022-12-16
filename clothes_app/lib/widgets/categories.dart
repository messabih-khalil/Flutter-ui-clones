import 'package:budget_app_ui/data/colors.dart';
import 'package:budget_app_ui/data/spacing.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final categories = ["Women", "T-shirt", "Dress"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: margin_1x),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: categories
            .map((e) => Container(
                  margin: EdgeInsets.only(right: margin_1x),
                  padding: EdgeInsets.all(pading_1x),
                  child: Text(
                    e,
                    style: TextStyle(
                        color: Color.fromARGB(255, 94, 94, 94),
                        fontWeight: FontWeight.w500),
                  ),
                  decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: BorderRadius.circular(5)),
                ))
            .toList(),
      ),
    );
  }
}
