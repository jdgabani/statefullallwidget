import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredDemo extends StatefulWidget {
  const ImageFilteredDemo({Key? key}) : super(key: key);

  @override
  State<ImageFilteredDemo> createState() => _ImageFilteredDemoState();
}

class _ImageFilteredDemoState extends State<ImageFilteredDemo> {
  double sigmax = 0.0;
  double sigmay = 0.0;
  double rotation = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: sigmax, sigmaY: sigmay),
            child: Image.network(
              "https://images.unsplash.com/photo-1500463959177-e0869687df26?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
          ),
          SizedBox(height: 10,),
          ImageFiltered(imageFilter: ImageFilter.matrix(Matrix4.skewX(rotation).storage),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("The tiger is the national animal of India.",style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          ),
          SizedBox(height: 10,),
          Slider(value: sigmax,
            min: 0,
            max: 10,
            onChanged: (double value){
            setState(() {
              sigmax=value;
            });
          },
          ),
          SizedBox(height: 10),
          Text("${sigmax.toStringAsFixed(0)}"),
          SizedBox(height: 10),
          Slider(value: sigmay,
            min: 0,
            max: 10,
            onChanged: (double value){
              setState(() {
                sigmay=value;
              });
            },
          ),
          SizedBox(height: 10),
          Text("${sigmay.toStringAsFixed(0)}"),
          SizedBox(height: 10),
          Slider(value: rotation,
              min: 0,
              max: 5,
              onChanged: (double value){
                setState(() {
                  rotation=value;
                });
              },
          ),
          SizedBox(height: 10),
          Text("${rotation.toStringAsFixed(0)}"),
        ],
      ),
    );
  }
}
