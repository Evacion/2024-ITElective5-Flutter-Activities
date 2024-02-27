// ignore_for_file: unused_import, unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:card_banner/card_banner.dart';
import 'package:excer1/screens/login_screen.dart';
import 'package:excer1/screens/screenbuilders/about/about_sb.dart';
import 'package:excer1/screens/screenbuilders/account/account_sb.dart';
import 'package:excer1/screens/screenbuilders/home/home_sb.dart';
import 'package:excer1/screens/screenbuilders/news/news_sb.dart';
import 'package:excer1/widgets/custom_food_card.dart';
import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Gonzales, Ray James Amer L.'),
      routes: {
        '/': (context) => HomeScreenBuilder(),
        '/news': (context) => NewsScreenBuilder(),
        '/about': (context) => AboutScreenBuilder(),
        '/account': (context) => AccountScreenBuilder(),
        '/logout': (context) => Placeholder(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    dynamic currentTime = DateFormat.jm().format(DateTime.now());
    dynamic currentDate = DateFormat.yMMMd().format(DateTime.now());

    int posts = _counter;
    int followers = 0;
    String name = "Arturia Pendragon";
    String tag = "King of Camelot";
    String postTitle = "Feeling Hungry in Summer";
    String description = "Might delete later idk, will need to ask Ritsuka about this.";


    // RAY JAMES AMER LUBAMA GONZALES was here
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                // Card(
                //   semanticContainer: true,
                //   elevation: 1,
                //   shape: RoundedRectangleBorder(
                //     side: BorderSide(
                //       color: Theme.of(context).colorScheme.outline,
                //     ),
                //     borderRadius: const BorderRadius.all(Radius.circular(12)),
                //   ),
                //   child: FillImageCard(
                //     imageProvider: AssetImage("lib/assets/welkin.jpg"),
                //     heightImage: screenHeight*.2,
                //     // height: screenHeight*0.5,
                //     width: 200,
                //     title: Text("Blessing of the Welkin Moon", textScaler: TextScaler.linear(1.3),),
                //     description: Column(
                //       children: [
                //         Text("₱280"),
                //         Container(
                //           margin: EdgeInsets.all(5),
                //           child: Row(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               ElevatedButton(onPressed: () => {}, child: Text("Cart")),
                //               Spacer(),
                //               ElevatedButton(onPressed: () => {}, child: Text("Buy")),
                //             ],
                //           ))
                //       ],
                //     ),
                //   ),
                // ),
                // Card(
                //   elevation: 0,
                //   shape: RoundedRectangleBorder(
                //     side: BorderSide(
                //       color: Theme.of(context).colorScheme.outline,
                //     ),
                //     borderRadius: const BorderRadius.all(Radius.circular(12)),
                //   ),
                //   child: SizedBox(
                //     height: 100,
                //     width: 300,
                //     child: Center(
                //       child: Column(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           Text('How are you?'),
                //           Text(currentTime, textAlign: TextAlign.right,)
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                LoginScreen(
                  loginImage: Image.asset("lib/assets/arturia.webp").image,
                ),
                CustomFoodCard(
                  name: name, 
                  description: description, 
                  postTitle: postTitle, 
                  tag: tag, 
                  profileImg: Image.asset("lib/assets/altria.webp").image,
                  postImg: Image.asset("lib/assets/maidtoria.webp").image,
                ),

                // Image( image: Image.asset("SHIT HERE").image),

                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text("Wa ko balo ani, gi kalimut gyud"),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: SizedBox(
                    width: 300,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset("lib/assets/arturia.webp").image,
                                  ),
                                ),
                              ),
                              Container(margin: EdgeInsets.symmetric(horizontal: 20), child:Text(name)),
                            ],
                          ),
                          Container(
                            height: 150,
                            width: 300,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset("lib/assets/arturiaBondCE.webp").image,
                              )
                            ),
                          ),
                          Text("Nothing but Copycats fr fr", textScaler: TextScaler.linear(1.2),),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset("lib/assets/altria.webp").image,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset("lib/assets/lily.webp").image,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset("lib/assets/squirtoria.webp").image,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset("lib/assets/castoria.webp").image,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset("lib/assets/ecchan.webp").image,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
