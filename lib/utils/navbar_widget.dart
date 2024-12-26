import 'package:meditation_app/utils/bottomnav_items_widget.dart';
import 'package:flutter/material.dart';


class BuildBottomnavBar extends StatelessWidget {
  const BuildBottomnavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 10.0,
      ),
      height: 80.0,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuikdButtomNavItem(
            svgsrc: 'assets/icons/calendar.svg',
            title: 'امروز',
            isAtive: false,
          ),
          BuikdButtomNavItem(
            svgsrc: 'assets/icons/gym.svg',
            title: 'تمرینات',
            isAtive: true,
          ),
          BuikdButtomNavItem(
            svgsrc: 'assets/icons/Settings.svg',
            title: 'تنظیمات',
            isAtive: false,
          ),
        ],
      ),
    );
  }
}