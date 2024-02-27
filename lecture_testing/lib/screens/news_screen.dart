import 'package:flutter/material.dart';

class NewsScreenWidget extends StatefulWidget {
  const NewsScreenWidget({super.key});

  @override
  State<NewsScreenWidget> createState() => _NewsScreenWidgetState();
}

class _NewsScreenWidgetState extends State<NewsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text("NEWS");
  }
}