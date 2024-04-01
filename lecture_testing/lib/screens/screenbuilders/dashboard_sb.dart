import 'package:auto_size_text/auto_size_text.dart';
import 'package:excer1/screens/dashboard_screen.dart';
import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class DashboardScreenBuilder extends StatefulWidget {
  const DashboardScreenBuilder({super.key});

  @override
  State<DashboardScreenBuilder> createState() => _DashboardScreenBuilderState();
}

class _DashboardScreenBuilderState extends State<DashboardScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    const sideDrawer = SideDrawerCustom();
    const bodyContent = DashboardScreenWidget();

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
          ),
          drawer: sideDrawer,
          // endDrawer: sideDrawer,
          body: bodyContent,
        );
    });
  }
}