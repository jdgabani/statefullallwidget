import 'package:flutter/material.dart';
import 'package:statefullallwidget/17 ImageFilteredDemo.dart';
import '11 DismissibleDemo.dart';
import '33 SliverAppBarDemo.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  void initState() {
    tabController = TabController(length: tabbaritem.length, vsync: this);
    super.initState();
  }

  List<Tab> tabbaritem = [
    Tab(
      icon: Icon(Icons.cloud),
      text: "Tab1",
    ),
    Tab(
      icon: Icon(Icons.alarm),
      text: "Tab2",
    ),
    Tab(
      icon: Icon(Icons.forum),
      text: "Tab3",
    ),
  ];

  List<Widget> pages = [
    DismissibleDemo(),
    ImageFilteredDemo(),
    SilverAppBarDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BottomTabBar"),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.deepOrange,
        child: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          controller: tabController,
          indicatorWeight: 2,
          tabs: tabbaritem,
        ),
      ),
    );
  }
}
