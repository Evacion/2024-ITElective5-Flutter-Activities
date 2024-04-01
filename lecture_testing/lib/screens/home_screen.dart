// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors
import 'package:excer1/widgets/faded_widget.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({super.key});

  @override
  State<HomeScreenWidget> createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;// - (MediaQuery.of(context).padding.top + (kBottomNavigationBarHeight + kToolbarHeight));
    
    // Orientation screenOrientation = MediaQuery.of(context).orientation;
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              FadedWidget(
                child: Image(image: Image.asset("lib/assets/addu/addu-ccfc.jpg").image,
                height: screenHeight*0.5,
                width: screenWidth,
                fit: BoxFit.cover,)
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: screenHeight*0.5,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: StrokeText(text: "Dashboard",
                    textStyle: TextStyle(
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
        // child: Column(
        //   children: [
        //     const Text("Gonzales"),
        //     Image.asset("lib/assets/fgo/Chaldea.webp"),
        //   ],
        // ),
        // Text("HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE HOME IS WHERE THE END ARRIVES")
      ),
    );
  }
}