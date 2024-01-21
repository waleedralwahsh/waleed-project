import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pro/second_screen.dart';

import 'ome.dart';

void main() {
  runApp(MaterialApp(
    home: Second1(),
  ));
}

class Second1 extends StatefulWidget {
  const Second1({Key? key}) : super(key: key);

  @override
  _Second1State createState() => _Second1State();
}

class _Second1State extends State<Second1> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        bottomNavigationBar: PersistentTabView(
          context,
          controller: _controller,
          screens: tabs.map((e) => e.view).toList(),
          navBarHeight: 70,
          items:[
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.home),
              activeColorPrimary: CupertinoColors.activeBlue,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.ten_k),
              activeColorPrimary: CupertinoColors.activeBlue,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.favorite),
              activeColorPrimary: CupertinoColors.activeBlue,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
            PersistentBottomNavBarItem(
              icon: const Icon(Icons.person),
              activeColorPrimary: CupertinoColors.activeBlue,
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ),
          ],
          // Other configurations...
        ),
      ),
    );
  }

  List<TabModel> tabs = [
    TabModel(title: "Title", view: Second()),
    TabModel(title: "Title", view: const Center(child: Text("Data1")) ),
    TabModel(title: "Title", view: const Center(child: Text("Data2"))),
    TabModel(title: "Title", view: ProfileScreen()),
  ];
}

class TabModel {
  String title;
  Widget view;

  TabModel({required this.title, required this.view});
}
