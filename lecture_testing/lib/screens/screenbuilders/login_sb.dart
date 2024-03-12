import 'package:excer1/screens/login_screen.dart';
// import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class LoginScreenBuilder extends StatefulWidget {
  const LoginScreenBuilder({super.key});

  @override
  State<LoginScreenBuilder> createState() => _LoginScreenBuilderState();
}

class _LoginScreenBuilderState extends State<LoginScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    // Orientation currOrientation = MediaQuery.of(context).orientation;
    // const sideDrawer = SideDrawerCustom();
    const bodyContent = LoginScreenWidget();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            actions: const [],
            backgroundColor: Colors.white30,
          ),
          // drawer: sideDrawer,
          body: bodyContent,
        );
    });
  }
}