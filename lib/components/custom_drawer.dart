// ignore_for_file: prefer_const_constructors

import 'package:design/data/data.dart';
import 'package:flutter/material.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                image: AssetImage("${currentUser.backgroundImageUrl}"),
                fit: BoxFit.cover,
                height: 220,
                width: double.infinity,
              ),
              Positioned(
                bottom: 20,
                left: 30,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3),
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage("${currentUser.profileImageUrl}"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "${currentUser.name}",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(.4),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Profile",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text(
              "Chat",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add_location_alt_outlined),
            title: Text(
              "Map",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "SignOut",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
