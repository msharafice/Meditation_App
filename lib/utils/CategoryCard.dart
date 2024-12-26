import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constans/constanse.dart';

class BuildCategoryCard extends StatelessWidget {
  final String svgsrc;
  final String title;
  final VoidCallback? press;
  const BuildCategoryCard({
    super.key,
    required this.svgsrc,
    required this.title,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.0),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0.0, 17.0),
              blurRadius: 17.0,
              spreadRadius: -23.0,
              color: kshadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    svgsrc,
                  ),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      // fontFamily:
                      fontSize: 15.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
