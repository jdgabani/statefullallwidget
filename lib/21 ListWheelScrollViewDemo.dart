import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  List ourcourses = [
    "Phone : +91 9904647575 ",
    "Our Courses",
    "UI/UX and Graphics Design",
    "Web Designing",
    "Web Development",
    "Full Stack Development",
    "Flutter Devlopment",
    "Digital Marketing",
    "experienced faculties name",
    "Nevil Vaghasiya",
    "Jenish Vaghasiya",
    "Maheshbhai",
    "Flutter Student Name",
    "J.D Gabani",
    "Viraj Asodariya",
    "Nikunj Munjani",
    "Deep Vadi",
    "Denish Sheladiya",
    "Laxshit Kotadiya",
    "Milan Nakrani",
    "Vishal Makvana",
    "Krushil Goti",
    "Nikunj Nakrani",
    "Manav",
    "Ghori",
  ];
  List color = [
    Colors.blue.shade900,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.teal,
    Colors.pink,
    Colors.orangeAccent,
    Colors.indigo,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.blueGrey.withOpacity(0.80),
    Colors.indigo.withOpacity(0.80),
    Colors.teal.withOpacity(0.80),
    Colors.pink.withOpacity(0.80),
    Colors.orangeAccent.withOpacity(0.80),
    Colors.indigo.withOpacity(0.80),
    Colors.red.withOpacity(0.80),
    Colors.green.withOpacity(0.80),
    Colors.blue.withOpacity(0.80),
    Colors.yellow.withOpacity(0.80),
    Colors.pink.withOpacity(0.80),
    Colors.orangeAccent.withOpacity(0.80),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Codeline Infotech",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              letterSpacing: 1,
              fontSize: 20,
              fontWeight: FontWeight.w900,
              shadows: [
                Shadow(
                    color: Colors.black, offset: Offset(-2, 2), blurRadius: 20),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListWheelScrollView(
          itemExtent: 80,
          physics: FixedExtentScrollPhysics(),
          diameterRatio: 1,
          // perspective: 0.00000001,
          squeeze: 1,
          useMagnifier: false,
          magnification: 1,
          overAndUnderCenterOpacity: 0.2,

          children: List.generate(
            ourcourses.length,
            (index) => Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: color[index],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Text(
                  ourcourses[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(-2, 2),
                          blurRadius: 20),
                    ],
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
