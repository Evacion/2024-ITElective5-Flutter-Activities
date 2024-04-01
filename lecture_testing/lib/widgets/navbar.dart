import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({super.key});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image(image: Image.asset("lib/assets/addu/addu-seal-colorized.png").image, height: 50,),
          const SizedBox(width: 10,),
          const Column(
            children: [
              AutoSizeText("Ateneo de Davao University"),
              AutoSizeText("Community Center Asset Management System", textScaleFactor: 0.55,),
            ],
          ),
        ],
      ),
      actions: const [],
    );
  }
}