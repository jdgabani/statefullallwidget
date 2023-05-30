import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {
   MediaQueryWidget({Key? key}) : super(key: key);

  @override
  State<MediaQueryWidget> createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: height*0.3,
              width: width*0.6,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
