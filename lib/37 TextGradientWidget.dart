import 'package:flutter/material.dart';

class TextGradientWidget extends StatefulWidget {
  const TextGradientWidget({Key? key}) : super(key: key);

  @override
  State<TextGradientWidget> createState() => _TextGradientWidgetState();
}

class _TextGradientWidgetState extends State<TextGradientWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "J.D GABANI",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..shader = LinearGradient(colors: [
                    Colors.deepOrange,
                    Colors.pink,
                    Colors.green.shade900,
                  ]).createShader(
                    Rect.fromCircle(center: Offset(200,600), radius: 150)
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
