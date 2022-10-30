import 'package:app1/widget/TravelBlogWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header text
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Travel Blog',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
          ),
          // slider menu

          Expanded(
            child: TravelBlogWidget(),
            flex: 2,
          ),

          // popular menu
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text(
                  'More popular',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          Expanded(
            child: Placeholder(),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
