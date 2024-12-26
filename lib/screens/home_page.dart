import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/utils/CategoryCard.dart';
import 'package:meditation_app/utils/bottomnav_items_widget.dart';
import 'package:meditation_app/screens/meditation_page.dart';
import 'package:meditation_app/utils/searchbar_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
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
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  'assets/images/undraw_pilates_gpdb.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.0,
                      width: 52.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/menu.svg',
                      ),
                    ),
                  ),
                  Text(
                    'محمد عزیز، برای مدیتیشن \n آماده ای؟',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          // fontFamily:
                          fontSize: 30.0,
                        ),
                  ),
                  const BuildSearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: [
                        const BuildCategoryCard(
                          svgsrc: 'assets/icons/Hamburger.svg',
                          title: 'رژیم پیشنهادی',
                        ),
                        const BuildCategoryCard(
                          svgsrc: 'assets/icons/Excrecises.svg',
                          title: 'نرمش',
                        ),
                        BuildCategoryCard(
                          svgsrc: 'assets/icons/Meditation.svg',
                          title: 'مدیتیشن',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MeditationPage();
                                },
                              ),
                            );
                          },
                        ),
                        const BuildCategoryCard(
                          svgsrc: 'assets/icons/yoga.svg',
                          title: 'یوگا',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}