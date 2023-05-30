import 'package:flutter/material.dart';
import 'package:statefullallwidget/15 GridViewBuilder.dart';

import '05 Card-Widget.dart';
import '22 Male_Fimale_Check_Radio_SwitchadaptiveButon.dart';
import '23 Map-List.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Tabs"),
          bottom: TabBar(
            indicatorColor: Colors.red,
            labelColor: Colors.cyanAccent,
            tabs: [
              Tab(
                child: Text("Chats"),
                icon: Icon(Icons.chat_sharp),
              ),
              Tab(
                child: Text("Status"),
                icon: Icon(Icons.message),
              ),
              Tab(
                child: Text("Calls"),
                icon: Icon(Icons.call_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ButtonDemo(),
            GridViewBuilderDemo(),
            Cardhomewidget(),
          ],
        ),
      ),
    );
  }
}
