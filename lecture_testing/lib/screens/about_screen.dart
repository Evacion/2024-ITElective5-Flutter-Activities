import 'package:flutter/material.dart';

class AboutScreenWidget extends StatefulWidget {
  const AboutScreenWidget({super.key});

  @override
  State<AboutScreenWidget> createState() => _AboutScreenWidgetState();
}

class _AboutScreenWidgetState extends State<AboutScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text("ABOUT");
  }
}