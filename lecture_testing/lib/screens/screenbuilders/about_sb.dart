import 'package:excer1/screens/about_screen.dart';
import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class AboutScreenBuilder extends StatefulWidget {
  const AboutScreenBuilder({super.key});

  @override
  State<AboutScreenBuilder> createState() => _AboutScreenBuilderState();
}

class _AboutScreenBuilderState extends State<AboutScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    const sideDrawer = SideDrawerCustom();
    const bodyContent = AboutScreenWidget();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(currOrientation == Orientation.landscape) { 
          return const Row(
            children: [
              sideDrawer,
              Expanded(
                child: Scaffold(
                  body: bodyContent,
                ),
              ),
            ],
          );
        }
        return Scaffold(
          appBar: AppBar(
            actions: const [],
            backgroundColor: Colors.white30,
          ),
          drawer: sideDrawer,
          endDrawer: sideDrawer,
          body: bodyContent,
        );
    });
  }
}