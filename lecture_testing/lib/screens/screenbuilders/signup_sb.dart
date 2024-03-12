import 'package:excer1/screens/signup_screen.dart';
// import 'package:excer1/widgets/sidedrawer.dart';
import 'package:flutter/material.dart';

class SignUpScreenBuilder extends StatefulWidget {
  const SignUpScreenBuilder({super.key});

  @override
  State<SignUpScreenBuilder> createState() => _SignUpScreenBuilderState();
}

class _SignUpScreenBuilderState extends State<SignUpScreenBuilder> {
  @override
  Widget build(BuildContext context) {
    // Orientation currOrientation = MediaQuery.of(context).orientation;
    // const sideDrawer = SideDrawerCustom();
    const bodyContent = SignUpWidget();

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