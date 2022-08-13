import 'package:flutter/material.dart';
import 'package:motivation_app/constants.dart';
import 'package:motivation_app/model/course.dart';

class CourseScreen extends StatefulWidget {
  final Course course;

  const CourseScreen({Key? key, required this.course}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        color: kBackgroundColor,
        child: Center(
          child: Text(widget.course.courseTitle),
        ),
      ),
    ));
  }
}
