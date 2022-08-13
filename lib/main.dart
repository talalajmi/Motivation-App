import 'package:flutter/material.dart';
import 'package:motivation_app/components/home_screen_navbar.dart';
import 'package:motivation_app/components/lists/explore_course_list.dart';
import 'package:motivation_app/components/lists/recent_course_list.dart';
import 'package:motivation_app/constants.dart';
import 'package:motivation_app/screens/sidebar_screen.dart';

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

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late Animation<Offset> sidebarAnimation;
  late AnimationController sidebarAnimationController;

  @override
  void initState() {
    super.initState();
    sidebarAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    sidebarAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
        parent: sidebarAnimationController, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeScreenNavBar(
                    triggerAnimation: () {
                      sidebarAnimationController.forward();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Recents",
                          style: kLargeTitleStyle,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "23 courses, more coming",
                          style: kSubtitleStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const RecentCourseList(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Explore",
                          style: kTitle1Style,
                        ),
                      ],
                    ),
                  ),
                  const ExploreCourseList(),
                ],
              ),
            ),
            SlideTransition(
              position: sidebarAnimation,
              child: const SafeArea(
                bottom: false,
                child: SidebarScreen(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
