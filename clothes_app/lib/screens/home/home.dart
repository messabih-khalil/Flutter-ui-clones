import 'package:budget_app_ui/widgets/categories.dart';
import 'package:budget_app_ui/widgets/custom_appbar.dart';
import 'package:budget_app_ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomAppBar(), SearchInput(), Categories()],
          ),
        ),
      ),
    );
  }
}
