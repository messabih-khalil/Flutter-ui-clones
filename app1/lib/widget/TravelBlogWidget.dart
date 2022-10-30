import 'package:app1/model/travel.dart';
import 'package:flutter/material.dart';

class TravelBlogWidget extends StatelessWidget {
  final _travelList = Travel.GeneratePosts();
  final _pageCtrl = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageCtrl,
      itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20, bottom: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  _travelList[index].url,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 50,
                left: 15,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.black.withOpacity(.6),
                  ),
                  padding: EdgeInsets.all(7),
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          _travelList[index].name,
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        _travelList[index].location,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                )),
            // float button
            Positioned(
              right: 40,
              bottom: 17,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () => {},
                ),
              ),
            )
          ],
        );
      },
      itemCount: _travelList.length,
    );
  }
}
