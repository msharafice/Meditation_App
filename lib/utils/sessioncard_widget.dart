import 'package:flutter/material.dart';
import 'package:meditation_app/constans/constanse.dart';

class BuildSessionCard extends StatelessWidget {
  final String sessionNumber;
  final bool isDone;
  final VoidCallback? press;
  const BuildSessionCard({
    super.key,
    required this.sessionNumber,
    this.isDone = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0, 17.0),
                  blurRadius: 23.0,
                  spreadRadius: -13.0,
                  color: kshadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        sessionNumber,
                        style: const TextStyle(
                          // fontFamily:
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          border: Border.all(color: kBlueColor),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
