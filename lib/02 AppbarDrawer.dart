import 'package:flutter/material.dart';

class AppbarDrawer extends StatefulWidget {
  AppbarDrawer({Key? key}) : super(key: key);

  @override
  State<AppbarDrawer> createState() => _AppbarDrawerState();
}

class _AppbarDrawerState extends State<AppbarDrawer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      drawer: Drawer(
        width: 280,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.pink.withOpacity(0.40),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("jdgabani1@gmail.com"),
              accountName: Text(
                "J.D Gabani",
              ),
              currentAccountPicture: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage("assets/images/jd.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepOrange.withOpacity(0.45),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
            ),
      Expanded(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person,color: Colors.white70,),
              title: Text("Profile",style: TextStyle(color: Colors.white70),),
              trailing: Icon(Icons.edit,color: Colors.white70,),
            );
          },
        ),
      )
        ]
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black.withAlpha(30),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.more));
          },
        ),
        leadingWidth: 80,
        title: Text("Appbar & Drawer"),
        titleSpacing: 10,
        centerTitle: true,
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Security"),
                ),
                PopupMenuItem(
                  child: Text("Lincked Device"),
                ),
                PopupMenuItem(
                  child: Text("Starred Massages"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("Privacy"),
                ),
              ];
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
