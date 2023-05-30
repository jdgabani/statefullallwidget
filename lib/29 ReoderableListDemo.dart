import 'package:flutter/material.dart';

class ReoderablelistDemo extends StatefulWidget {
  const ReoderablelistDemo({Key? key}) : super(key: key);

  @override
  State<ReoderablelistDemo> createState() => _ReoderablelistDemoState();
}

class _ReoderablelistDemoState extends State<ReoderablelistDemo> {
  List name = [
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
    "Nikunj",
    "Jaydeep",
    "Milan",
    "Deep",
    "Viraj",
    "Denish",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView.builder(
          itemBuilder: (context, index) {
            return Center(
              key: UniqueKey(),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "${name[index]}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },
          itemCount: name.length,
          onReorder: (int oldIndex, int newIndex) {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            var addindex = name.removeAt(oldIndex);
            name.insert(newIndex, addindex);
            setState(() {});
          },
        ),
      ),
    );
  }
}
