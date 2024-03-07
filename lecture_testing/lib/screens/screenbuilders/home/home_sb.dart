import 'package:excer1/screens/home_screen.dart';
import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class HomeScreenBuilder extends StatefulWidget {
  const HomeScreenBuilder({super.key});

  @override
  State<HomeScreenBuilder> createState() => _HomeScreenBuilderState();
}

class _HomeScreenBuilderState extends State<HomeScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    const sideDrawer = SideDrawerCustom();
    const bodyContent = HomeScreenWidget();

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
          ),
          drawer: sideDrawer,
          endDrawer: sideDrawer,
          body: bodyContent,
        );
    });
  }
}