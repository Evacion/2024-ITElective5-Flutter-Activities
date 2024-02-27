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
            title: const Text("Home"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            title: const Text("News"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/news');
            },
          ),
          ListTile(
            title: const Text("About"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            title: const Text("My Account"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/account');
            },
          ),
          const ListTile(
            title: Text("Logout"),
            onTap: null,
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