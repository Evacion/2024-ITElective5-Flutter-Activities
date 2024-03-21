import 'package:excer1/screens/screenbuilders/login_sb.dart';
import 'package:excer1/screens/screenbuilders/signup_sb.dart';
import 'package:excer1/screens/screenbuilders/about_sb.dart';
import 'package:excer1/screens/screenbuilders/account_sb.dart';
import 'package:excer1/screens/screenbuilders/home_sb.dart';
import 'package:excer1/screens/screenbuilders/news_sb.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      // home: const MyHomePage(title: 'Gonzales, Ray James Amer L.'),
      routes: {
        '/': (context) => const LoginScreenBuilder(),
        '/home': (context) => const HomeScreenBuilder(),
        '/signup': (context) => const SignUpScreenBuilder(),
        '/news': (context) => const NewsScreenBuilder(),
        '/about': (context) => const AboutScreenBuilder(),
        '/account': (context) => const AccountScreenBuilder(),
        '/logout': (context) => const Placeholder(),
      },
    );
  }
}