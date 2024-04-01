import 'package:excer1/widgets/faded_widget.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class SettingsScreenWidget extends StatefulWidget {
  const SettingsScreenWidget({super.key});

  @override
  State<SettingsScreenWidget> createState() => _SettingsScreenWidgetState();
}

class _SettingsScreenWidgetState extends State<SettingsScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;// - (MediaQuery.of(context).padding.top + (kBottomNavigationBarHeight + kToolbarHeight));
    
    double bgHeight = screenHeight*0.25;
    String bgImage = "lib/assets/addu/addu-library.jpg";
    String bgText = "Settings";

    // Orientation screenOrientation = MediaQuery.of(context).orientation;
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              FadedWidget(
                child: Image(image: Image.asset(bgImage).image,
                height: bgHeight,
                width: screenWidth,
                fit: BoxFit.cover,)
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: bgHeight,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: StrokeText(text: bgText,
                    textStyle: const TextStyle(
                      fontSize: 50,
                    ),
                    textColor: Colors.white,
                    strokeColor: Colors.black,
                  )
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}