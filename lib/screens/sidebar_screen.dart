import 'package:flutter/material.dart';
import 'package:motivation_app/components/sidebar_row.dart';
import 'package:motivation_app/constants.dart';
import 'package:motivation_app/model/sidebar.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: kSidebarBackgroundColor,
            borderRadius: BorderRadius.only(topRight: Radius.circular(34.0))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.85,
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('asset/images/profile.jpg'),
                    radius: 21.0,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Talal Al Ajmi",
                        style: kHeadlineLabelStyle,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Subscription ends on 1st September 2022",
                        style: kSearchPlaceholderStyle,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SidebarRow(
                item: sidebarItem[0],
              ),
              const SizedBox(
                height: 32,
              ),
              SidebarRow(
                item: sidebarItem[1],
              ),
              const SizedBox(
                height: 32,
              ),
              SidebarRow(
                item: sidebarItem[2],
              ),
              const SizedBox(
                height: 32,
              ),
              SidebarRow(
                item: sidebarItem[3],
              ),
              const SizedBox(
                height: 32,
              ),
              const Spacer(),
              Row(
                children: [
                  Image.asset(
                    'asset/icons/icon-logout.png',
                    width: 17,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Logout",
                    style: kSecondaryCalloutLabelStyle,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
