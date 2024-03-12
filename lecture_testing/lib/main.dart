// ignore_for_file: unused_import, unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:card_banner/card_banner.dart';
import 'package:excer1/screens/screenbuilders/login_sb.dart';
import 'package:excer1/screens/screenbuilders/signup_sb.dart';
import 'package:excer1/widgets/login_widget.dart';
import 'package:excer1/screens/screenbuilders/about_sb.dart';
import 'package:excer1/screens/screenbuilders/account_sb.dart';
import 'package:excer1/screens/screenbuilders/home_sb.dart';
import 'package:excer1/screens/screenbuilders/news_sb.dart';
import 'package:excer1/widgets/custom_food_card.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Gonzales, Ray James Amer L.'),
      routes: {
        '/': (context) => LoginScreenBuilder(),
        '/home': (context) => HomeScreenBuilder(),
        '/signup': (context) => SignUpScreenBuilder(),
        '/news': (context) => NewsScreenBuilder(),
        '/about': (context) => AboutScreenBuilder(),
        '/account': (context) => AccountScreenBuilder(),
        '/logout': (context) => Placeholder(),
      },
    );
  }
}