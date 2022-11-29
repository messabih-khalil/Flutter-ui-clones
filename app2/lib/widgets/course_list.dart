import 'package:app2/widgets/course_card.dart';
import 'package:flutter/material.dart';

import '../models/course.dart';

class CoursesList extends StatelessWidget {
  final List<Course> courses = Course.generateCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: courses.length,
          itemBuilder: (context, index) => CourseCard(this.courses[index])),
    );
  }
}
