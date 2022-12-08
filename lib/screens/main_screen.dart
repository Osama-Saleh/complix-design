// ignore_for_file: prefer_const_constructors

import 'package:design/components/custom_drawer.dart';
import 'package:design/components/following_user.dart';
import 'package:design/components/posting_user.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  TabController? tabcon;
  PageController? pagcon;
  @override
  void initState() {
    super.initState();
    tabcon = TabController(length: 2, vsync: this);
    pagcon = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Freeze",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
        bottom: TabBar(
          controller: tabcon,
          indicatorWeight: 2,
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Text("Trinding"),
            Text("Latest"),
            // Text("Latest"),
          ],
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.blue[300],
          labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: TabBarView(controller: tabcon, children: [
        ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            FollowingUser(),
            PostingUser(pCon: pagcon),
          ],
        ),
        Container(
          color: Colors.blue[200],
        )
      ]),
      drawer: customDrawer(),
    );
  }
}
