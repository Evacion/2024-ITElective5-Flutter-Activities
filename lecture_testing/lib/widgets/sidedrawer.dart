import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SideDrawerCustom extends StatefulWidget {
  const SideDrawerCustom({super.key});

  @override
  State<SideDrawerCustom> createState() => _SideDrawerCustomState();
}

class _SideDrawerCustomState extends State<SideDrawerCustom> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: Border.all(width: 0),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image(
              image: Image.asset("lib/assets/addu/addu-seal-colorized.png").image,
              height: 100,
            ),
            const AutoSizeText("Community Center Asset \nManagemnet System",
              textScaleFactor: 0.75,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40,),
            Expanded(
              child: ListView(
                children: [
                  for (var buttonName in ["Dashboard", "Settings", "Profile"]) //["Home", "News", "About", "Account"]
                  Container(
                    height: 65,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      onPressed: ModalRoute.of(context)?.settings.name == '/${buttonName.toLowerCase()}' ? null : () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                        Navigator.pushNamed(context, '/${buttonName.toLowerCase()}');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white70),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )),
                      ),
                      child: Text(buttonName, style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/${buttonName.toLowerCase()}' ? Colors.grey: Colors.black),),
                    ),
                  ),
                  // ListTile(
                  //   title: Text("Home", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/home' ? Colors.grey: Colors.black),),
                  //   onTap: ModalRoute.of(context)?.settings.name == '/home' ? null : () {
                  //     Navigator.pop(context);
                  //     Navigator.pushNamed(context, '/home');
                  //   },
                  // ),
                  // ListTile(
                  //   title: Text("News", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/news' ? Colors.grey: Colors.black),),
                  //   onTap: ModalRoute.of(context)?.settings.name == '/news' ? null : () {
                  //     Navigator.pop(context);
                  //     Navigator.pushNamed(context, '/news');
                  //   },
                  // ),
                  // ListTile(
                  //   title: Text("About Us", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/about' ? Colors.grey: Colors.black),),
                  //   onTap: ModalRoute.of(context)?.settings.name == '/about' ? null : () {
                  //     Navigator.pop(context);
                  //     Navigator.pushNamed(context, '/about');
                  //   },
                  // ),
                  // ListTile(
                  //   title: Text("My Account", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/account' ? Colors.grey: Colors.black),),
                  //   onTap: ModalRoute.of(context)?.settings.name == '/account' ? null : () {
                  //     Navigator.pop(context);
                  //     Navigator.pushNamed(context, '/account');
                  //   },
                  // ),
                  // ListTile(
                  //   title: const Text("Logout"),
                  //   onTap: () {
                  //     Navigator.popUntil(context, (route) => route.isFirst);
                  //   },
                  // ),
                  // ListTile(
                  //   title: CircleAvatar(
                  //     backgroundImage: Image.asset("lib/assets/ecchan.webp").image,
                  //     radius: 100,
                  //     // minRadius: 100,
                  //     // maxRadius: 200,
                  //   )
                  // )
                ],
              ),
            ),
            const AutoSizeText("Powered by:", textScaleFactor: 0.75,),
            Image(
              image: Image.asset("lib/assets/addu/arisen-lab-caption.png").image,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}