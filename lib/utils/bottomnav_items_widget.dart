import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constans/constanse.dart';

class BuikdButtomNavItem extends StatelessWidget {
  final String svgsrc;
  final String title;
  final VoidCallback? press;
  final bool isAtive;
  const BuikdButtomNavItem({
    super.key,
    required this.svgsrc,
    required this.title,
    this.press,
    required this.isAtive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(svgsrc),
        Text(
          title,
          style: TextStyle(
            color: isAtive ? kActiveIconColor : kTextColor,
            // fontFamily:
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
