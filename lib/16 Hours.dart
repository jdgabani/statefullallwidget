import 'dart:async';

import 'package:flutter/material.dart';

class Hours extends StatefulWidget {
  const Hours({Key? key}) : super(key: key);

  @override
  State<Hours> createState() => _HoursState();
}

class _HoursState extends State<Hours> {
  int second = 0;
  int minitues = 0;
  int hours = 0;

  void Timerdemo() {
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      second++;
      if (second == 60) {
        minitues++;
        second = 0;
        if (minitues == 60) {
          hours++;
          second = 0;
          minitues = 0;
          if (hours == 13) {
            second = 0;
            minitues = 0;
            hours = 0;
          }
        }
      }
      setState(() {});
      print('$hours $minitues $second');
    });
  }

  @override
  void initState() {
    Timerdemo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "0$hours:0$minitues:$second",
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
