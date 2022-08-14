import 'package:flutter/material.dart';
import 'package:motivation_app/components/cards/course_screen_cards.dart';
import 'package:motivation_app/constants.dart';
import 'package:motivation_app/model/course.dart';

class CourseSectionList extends StatelessWidget {
  const CourseSectionList({Key? key}) : super(key: key);

  List<Widget> courseSectionsWidgets() {
    List<Widget> cards = [];

    for (var course in courseSections) {
      cards.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CourseSectionCard(course: course),
        ),
      );
    }

    cards.add(
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          "No more sections to view, look\nfor more in our courses",
          style: kCaptionLabelStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: courseSectionsWidgets(),
      ),
    );
  }
}
