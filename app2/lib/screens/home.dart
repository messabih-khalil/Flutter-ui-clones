import 'package:app2/constants/colors.dart';
import 'package:app2/widgets/category_title.dart';
import 'package:app2/widgets/course_card.dart';
import 'package:app2/widgets/course_list.dart';
import 'package:app2/widgets/header_text.dart';
import 'package:app2/widgets/search_input.dart';
import 'package:flutter/material.dart';

import '../models/course.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderText(),
                SearchInput(),
                CategoryTail('Top of the week', 'view all'),
                CoursesList(),
                CategoryTail('Currently active', 'view all'),
              ],
            ),
          ),
        ));
  }

  AppBar _appBar() {
    return AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        centerTitle: false,
        title: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Hello aladin !",
              style: TextStyle(color: fontColorLight, fontSize: 18),
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: fontColorLight, width: 2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.notifications_none,
                      color: Colors.grey, size: 25),
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration:
                        BoxDecoration(color: accent, shape: BoxShape.circle),
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
