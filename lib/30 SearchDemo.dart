import 'package:flutter/material.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({Key? key}) : super(key: key);

  @override
  State<SearchDemo> createState() => _SearchDemoState();
}

class _SearchDemoState extends State<SearchDemo> {
  TextEditingController ourcoursescontroller = TextEditingController();
  List<String> data = [];
  List<String> ourcourses = [
    "Codeline Infotech",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("SearchDemo")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    data.clear();
                    ourcourses.forEach(
                      (element) {
                        if (element.contains(value)) {
                          data.add(element);
                          setState(() {});
                        }
                      },
                    );
                  },
                  controller: ourcoursescontroller,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                ourcoursescontroller.text == ""
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: ourcourses.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "${ourcourses[index]}",
                            style: TextStyle(height: 3),
                          );
                        },
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "${data[index]}",
                            style: TextStyle(height: 3),
                          );
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
