// add font
import 'package:flutter/material.dart';
import 'package:meditation_app/constans/constanse.dart';
import 'package:meditation_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: ,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kTextColor),
          scaffoldBackgroundColor: kBackgroundColor),
      home: const HomeScreen(),
    );
  }
}


