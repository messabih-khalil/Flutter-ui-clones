import 'package:app2/constants/colors.dart';
import 'package:app2/models/course.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  CourseCard(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  color: primary, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        child: Image.network(
                          course.imgUrl.toString(),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    // profile image
                                    Container(
                                      width: 25,
                                      height: 25,
                                      margin: EdgeInsets.only(right: 10),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(200),
                                        child: Image.network(
                                            course.authorImage.toString()),
                                      ),
                                    ),
                                    // author name
                                    Text(
                                      course.author.toString(),
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    course.title.toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ))
                ],
              ),
            ),
            Positioned(
                top: 145,
                right: 10,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: accent, elevation: 0),
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ),
                ))
          ],
        ));
  }
}
