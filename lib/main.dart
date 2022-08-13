import 'package:flutter/material.dart';
import 'package:motivation_app/constants.dart';
import 'package:motivation_app/model/course.dart';
import 'package:motivation_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
