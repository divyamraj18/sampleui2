import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MainPersistentTabBar extends StatefulWidget {
  @override
  _MainPersistentTabBarState createState() => _MainPersistentTabBarState();
}

class _MainPersistentTabBarState extends State<MainPersistentTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      //initialIndex: 2,
      length: 3,
      child: TabBar(

        tabs: [

          Tab(
            child: Text(
              'Staters',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              'Main Course',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              'Breads',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
