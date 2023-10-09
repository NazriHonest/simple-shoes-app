import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_playing_ground/screens/root_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade200,
        child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 150,
          child: DrawerHeader(
            child: const Column(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(height: 15),
                Text("Engr. Nazri Honest",
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.purple.shade400,
            ),
          ),
        ),
        const SizedBox(height: 20),
        ListTile(
          onTap:() => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RootScreen())),
          leading: const Icon(CupertinoIcons.home),
          title: const Text("Home"),
        ),
        const ListTile(
          leading: Icon(CupertinoIcons.search),
          title: Text("Search"),
        ),
        const ListTile(
          leading: Icon(CupertinoIcons.bell),
          title: Text("Notifications"),
        ),
        const ListTile(
          leading: Icon(CupertinoIcons.settings),
          title: Text("Settings"),
        ),
        const ListTile(
          leading: Icon(CupertinoIcons.airplane),
          title: Text("Help"),
        ),
      ],
    ));
  }
}
