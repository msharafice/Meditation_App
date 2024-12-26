import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constans/constanse.dart';
import 'package:meditation_app/utils/navbar_widget.dart';
import 'package:meditation_app/screens/player_page.dart';
import 'package:meditation_app/utils/sessioncard_widget.dart';
import 'package:meditation_app/utils/searchbar_widget.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BuildBottomnavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/meditation_bg.png',
                ),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        // fontFamily:
                        fontSize: 40.0,
                      ),
                    ),
                    const Text(
                      '20 دقیقه آموزش',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        // fontFamily:
                        fontSize: 14.0,
                      ),
                    ),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را \nمیتوانید خیلی افزایش دهید و عمر طولانی‌تری\n داشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        // fontFamily:
                        fontSize: 15.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * 0.4,
                        height: 100,
                        child: const BuildSearchBar(),
                      ),
                    ),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        // فارسی نویس آنلاین
                        BuildSessionCard(
                          sessionNumber: 'درس 01',
                          isDone: true,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const MyVideoPlayerPage();
                              }),
                            );
                          },
                        ),
                        const BuildSessionCard(sessionNumber: 'درس 02'),
                        const BuildSessionCard(sessionNumber: 'درس 03'),
                        const BuildSessionCard(sessionNumber: 'درس 04'),
                        const BuildSessionCard(sessionNumber: 'درس 05'),
                        const BuildSessionCard(sessionNumber: 'درس 06'),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    const Text(
                      'پیشنهاد ما',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        // fontFamily:
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                      padding: const EdgeInsets.all(10.0),
                      height: 90.0,
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
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'یوگا پیشرفته',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    // fontFamily:
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  'پیشرفته تر از قبل تمرین کنید',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    // fontFamily:
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20.0),
                          SvgPicture.asset(
                              'assets/icons/Meditation_women_small.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
