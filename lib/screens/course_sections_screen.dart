import 'package:flutter/material.dart';
import 'package:motivation_app/components/lists/course_section-list.dart';
import 'package:motivation_app/constants.dart';

class CourseSectionScreen extends StatelessWidget {
  const CourseSectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              color: kCardPopupBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34),
                bottomLeft: Radius.circular(34),
              ),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12),
                  blurRadius: 32,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Course Sections",
                  style: kTitle2Style,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "12 sections",
                  style: kSubtitleStyle,
                ),
              ],
            ),
          ),
          const CourseSectionList(),
          const SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
