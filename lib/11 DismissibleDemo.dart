import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({Key? key}) : super(key: key);

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  List name = [
    "J.D Gabani",
    "Nikunj Munjani",
    "Deep Vadi",
    "Denish Sheladiya",
    "Viraj Asodariya",
    "Milan Nakrani",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: List.generate(
            name.length,
            (index) => Dismissible(
              key: UniqueKey(),
              background: Icon(Icons.delete),
              crossAxisEndOffset: 1,
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.pink.shade50,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Center(
                  child: Text(
                    "${name[index]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
