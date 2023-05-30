import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({Key? key}) : super(key: key);

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List data = [
    "J.D Gabani",
    "Deep Vadi",
    "Nikunj Mujani",
    "Denish Sheladiya",
    "Viraj Asodariya",
    "Laxshit Kotadiya",
    "Milan Nakrani",
    "Vishal Makvana",
  ];
  String? name = "Flutter Devlopment Student";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text("${name}"),
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                items: List.generate(
                  data.length,
                  (index) => DropdownMenuItem(
                    value: data[index],
                      child: Text(
                        data[index],
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                  ),
                ),
                onChanged: (value){
                  setState(() {});
                    name=value as String?;
                },
            ),
          ],
        ),
      ),
    );
  }
}
