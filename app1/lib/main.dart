import 'package:flutter/material.dart';

// import screens
import 'package:app1/screens/home.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
