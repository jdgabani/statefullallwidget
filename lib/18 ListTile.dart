import 'package:flutter/material.dart';

class Listtle extends StatefulWidget {
  const Listtle({Key? key}) : super(key: key);

  @override
  State<Listtle> createState() => _ListtileState();
}

class _ListtileState extends State<Listtle> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              children: List.generate(
                4,
                (index) => Column(
                  children: [
                    ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 30),
                      textColor: Colors.white,
                      focusColor: Colors.deepOrange,
                      tileColor: Colors.lightBlueAccent,
                      iconColor: Colors.yellow,
                      leading: Icon(Icons.account_circle),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("JD gabani"), Text("Dt.03/02/2023")],
                      ),
                      trailing: Container(
                        height: 20,
                        width: 20,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.add_circle,
                          size: 30,
                        ),
                        title: Text(
                          "hello world",
                        ),
                        trailing: Container(
                          height: 40,
                          width: 40,
                          color: Colors.teal,
                        ),
                      ),
                    ],
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
