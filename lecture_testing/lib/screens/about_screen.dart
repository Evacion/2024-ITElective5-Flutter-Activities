import 'package:flutter/material.dart';

class AboutScreenWidget extends StatefulWidget {
  const AboutScreenWidget({super.key});

  @override
  State<AboutScreenWidget> createState() => _AboutScreenWidgetState();
}

class _AboutScreenWidgetState extends State<AboutScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = 400;
    double cardWidth = 800;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              height: cardHeight < screenHeight ? cardHeight : screenHeight,
              width: cardWidth < screenWidth ? cardWidth*0.5 : screenWidth*0.50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset("lib/assets/ecchan.webp").image,
                ),
              ),
              child: Container(
                alignment: Alignment.topRight,
                margin: const EdgeInsets.all(5),
              ),
            ),
            const Text("YAPPING"),
            const Text("Setting up Flutter was pretty reasonable, and I enjoy how responsive it is to any changes made. I've had a bit more experience with Flutter, but it's still a fascinating experience."),
            const Spacer(),
            const Text("The first major bug that I encountered... I believe it was formatting Rows and Columns. Sometimes they worked and sometimes they didn't. I experienced a lot of heartache getting that to work, but a little finagling always solves that issue."),
            const Spacer(),
            const Text("The first big Euraka moment I had with Flutter was single line conditional statements. They ended up making things so much simpler to code, without a doubt")
          ],
        ),
      ),
    );
  }
}