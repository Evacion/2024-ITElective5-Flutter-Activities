import 'package:excer1/screens/account_screen.dart';
import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class AccountScreenBuilder extends StatefulWidget {
  const AccountScreenBuilder({super.key});

  @override
  State<AccountScreenBuilder> createState() => _AccountScreenBuilderState();
}

class _AccountScreenBuilderState extends State<AccountScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    Orientation currOrientation = MediaQuery.of(context).orientation;
    const sideDrawer = SideDrawerCustom();
    const bodyContent = AccountScreenWidget();

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