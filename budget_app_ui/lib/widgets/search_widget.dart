import 'package:budget_app_ui/data/colors.dart';
import 'package:budget_app_ui/data/spacing.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(pading_3x),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 218, 218, 218),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Search your t-shirt",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: margin_1x),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
    );
  }
}
