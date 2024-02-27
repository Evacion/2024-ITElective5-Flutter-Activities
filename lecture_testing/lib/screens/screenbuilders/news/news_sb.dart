import 'package:excer1/screens/news_screen.dart';
import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class NewsScreenBuilder extends StatefulWidget {
  const NewsScreenBuilder({super.key});

  @override
  State<NewsScreenBuilder> createState() => _NewsScreenBuilderState();
}

class _NewsScreenBuilderState extends State<NewsScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    const sideDrawer = SideDrawerCustom();
    const bodyContent = NewsScreenWidget();

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
          body: bodyContent,
        );
    });
  }
}