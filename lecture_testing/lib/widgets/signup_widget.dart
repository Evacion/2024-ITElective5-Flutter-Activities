// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

bool isChecked = false;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double cardHeight = 600;
    double cardWidth = 1200;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + (kBottomNavigationBarHeight + kToolbarHeight));
    return Card(
      clipBehavior: Clip.antiAlias,
      // elevation: 0,
      shape: const RoundedRectangleBorder(
        // side: BorderSide(color: Theme.of(context).colorScheme.outline,),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Stack(
        children: [
          FittedBox(
            fit: BoxFit.fitHeight,
            child: SizedBox(
              height: cardHeight < screenHeight ? cardHeight: screenHeight,
              width: cardWidth < screenWidth ? cardWidth : screenWidth,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(25,50,75,50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: const EdgeInsets.all(15),
                            child: const Text("Sign Up Here!", textScaler: TextScaler.linear(2), textWidthBasis: TextWidthBasis.longestLine,)
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: const Text("Please input the appropriate details.", textScaler: TextScaler.linear(0.8), textWidthBasis: TextWidthBasis.longestLine, style: TextStyle(
                              color: Colors.grey,
                            ),),
                          ),
                          const Spacer(),
                          // Divider(color: Colors.grey[75], height: 1,),
                          Container(
                            margin: const EdgeInsets.all(15),
                            // padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'First Name',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Last Name',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email Address',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Username',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Password',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Confirm Password',
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 50,
                                        width: 155,
                                        child: ElevatedButton(
                                          onPressed: () {Navigator.pushNamed(context, '/home');},
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5)
                                            )),
                                          ),
                                          child: const Text("Create Account", style: TextStyle(color: Colors.white),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Spacer(),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Text("By sign up you agree to our term and that you have read our data policy.", 
                              textScaler: TextScaler.linear(1),
                              textWidthBasis: TextWidthBasis.parent,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}