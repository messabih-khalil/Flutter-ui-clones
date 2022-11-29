import 'package:app2/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: fontColorLight.withOpacity(.7), width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(children: [
        Container(
            child: TextField(
          cursorColor: fontColorLight,
          decoration: InputDecoration(
              fillColor: fontColorLight.withOpacity(0.3),
              filled: true,
              border: InputBorder.none,
              hintText: 'Searching ...',
              hintStyle: TextStyle(color: fontColorLight)),
        )),
        Positioned(
            top: 6,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ))
      ]),
    );
  }
}
