import 'package:flutter/material.dart';

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}

class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  var home = GlobalKey<FormState>();
  var username = "Jaydeep";
  var pass = "Jay@1996";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: home,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
                child: Column(
                  children: [
                    TextFormField(
                      controller: one,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "username",
                      ),
                      validator: (value) {
                        setState(() {});
                        bool emailvalid = RegExp(
                                "^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);
                        if (emailvalid) {
                          return null;
                        } else {
                          return "Enter Your Name";
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: two,
                      decoration: InputDecoration(
                        hintText: "password",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        setState(() {});
                        bool passvalid = RegExp(
                                "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                            .hasMatch(value!);
                        if (passvalid) {
                          return null;
                        } else {
                          return "enter your password";
                        }
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        if (home.currentState!.validate()) {
                          if (username == one.text && pass == two.text) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Center(
                                  child: Text(
                                    ("J.D Gabani"),
                                  ),
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Invalid Name Or Password "),
                              ),
                            );
                          }
                        }
                      },
                      child: Text(
                        "Submit",
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
