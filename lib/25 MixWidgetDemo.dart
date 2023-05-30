import 'package:flutter/material.dart';

class MixWidgetDemo extends StatefulWidget {
  const MixWidgetDemo({Key? key}) : super(key: key);

  @override
  State<MixWidgetDemo> createState() => _MixWidgetDemoState();
}

class _MixWidgetDemoState extends State<MixWidgetDemo> {
  List name = ["JD Gabani", "Nikunj", "Deep", "Viraj", "Denish", "Milan"];

  String expansionvalue = 'A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 400,
                minHeight: 200,
                maxWidth: 300,
                minWidth: 200,
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.pinkAccent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              children: List.generate(
                10,
                (index) => Container(
                  height: 50,
                  width: 50,
                  color: Colors.indigoAccent,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ExpansionTile(
              initiallyExpanded: true,
              maintainState: true,
              title: Text("${expansionvalue}"),
              leading: Icon(Icons.person),
              children: List.generate(
                name.length,
                (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      expansionvalue=name[index];
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 400,
                    margin: EdgeInsets.all(8),
                    color: expansionvalue==name[index]
                      ?Colors.blue
                      :Colors.white70,
                    child: Center(child: Text('${name[index]}'),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
