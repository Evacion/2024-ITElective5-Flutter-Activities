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
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          ListTile(
            title: Text("Home", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/home' ? Colors.grey: Colors.black),),
            onTap: ModalRoute.of(context)?.settings.name == '/home' ? null : () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text("News", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/news' ? Colors.grey: Colors.black),),
            onTap: ModalRoute.of(context)?.settings.name == '/news' ? null : () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/news');
            },
          ),
          ListTile(
            title: Text("About Us", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/about' ? Colors.grey: Colors.black),),
            onTap: ModalRoute.of(context)?.settings.name == '/about' ? null : () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: Text("My Account", style: TextStyle(color: ModalRoute.of(context)?.settings.name == '/account' ? Colors.grey: Colors.black),),
            onTap: ModalRoute.of(context)?.settings.name == '/account' ? null : () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/account');
            },
          ),
          ListTile(
            title: const Text("Logout"),
            onTap: () {
              Navigator.popUntil(context, (route) => route.isFirst);
              
            },
          ),
          ListTile(
            title: CircleAvatar(
              backgroundImage: Image.asset("lib/assets/ecchan.webp").image,
              radius: 100,
              // minRadius: 100,
              // maxRadius: 200,
            )
          )
        ],
      ),
    );
  }
}