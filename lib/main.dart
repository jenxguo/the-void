import 'package:flutter/material.dart';
import './pages/homepage.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Void',
      theme: ThemeData.dark().copyWith(
        primaryColor: kMauveColor,
        scaffoldBackgroundColor: kDarkColor,
      ),
      home: HomePage(),
    );
  }
}