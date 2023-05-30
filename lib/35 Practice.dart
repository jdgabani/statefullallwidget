import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  TextEditingController searchcontroller = TextEditingController();
  List<String> data = [];
  List<String> frname = [
    "Viraj",
    "Nikunj",
    "Deep",
    "Denish",
    "Laxshit",
    "Milind",
    "Milan",
    "Vishal",
    "Goti",
    "Maheshbhai",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (value) {
                    data.clear();
                    frname.forEach(
                      (element) {
                        if (element.contains(value)) {
                          data.add(element);
                          setState(() {});
                        }
                      },
                    );
                  },
                  controller: searchcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Name"),
                ),
                searchcontroller.text == ""
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: frname.length,
                        itemBuilder: (context, index) {
                          return Text(
                            "${frname[index]}",
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
                        }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
