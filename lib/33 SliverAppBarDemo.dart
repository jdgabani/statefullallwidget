import 'package:flutter/material.dart';

class SilverAppBarDemo extends StatefulWidget {
  const SilverAppBarDemo({Key? key}) : super(key: key);

  @override
  State<SilverAppBarDemo> createState() => _SilverAppBarDemoState();
}

class _SilverAppBarDemoState extends State<SilverAppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            title: Icon(Icons.mobile_friendly_rounded),
            backgroundColor: Colors.teal,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flutter Devloper"),
              background: Image.asset(
                'assets/images/jd.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  padding: EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.cyan,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      title: Text("J.D Gabani"),
                      subtitle: Text("+91 9979396888"),
                      trailing: Icon(
                        Icons.check_circle,
                        color: Colors.teal,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
