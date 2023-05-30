import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  const GridViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<GridViewBuilderDemo> createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  List containercolor = [
    Colors.deepOrange,
    Colors.pink,
    Colors.green,
    Colors.grey,
    Colors.greenAccent,
    Colors.orange,
    Colors.black54,
    Colors.teal,
    Colors.blue,
    Colors.brown,
    Colors.lightGreen,
    Colors.purple,
    Colors.indigo,
    Colors.deepOrange,
    Colors.pink,
    Colors.green,
    Colors.grey,
    Colors.greenAccent,
    Colors.orange,
    Colors.black54,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 2.8,
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: containercolor[index],
                      child: Center(
                        child: Text(
                          "$index",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      "J.D Gabani",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
