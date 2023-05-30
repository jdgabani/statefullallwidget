import 'package:flutter/material.dart';

class ShowModalBottomSheetWidget extends StatefulWidget {
  const ShowModalBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<ShowModalBottomSheetWidget> createState() => _ShowModalBottomSheetWidgetState();
}

class _ShowModalBottomSheetWidgetState extends State<ShowModalBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: Text("ShowModalBottomSheet"),),
      //   backgroundColor: Colors.deepOrange.withAlpha(400),
      // ),
      body: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            context: context,
            isScrollControlled: true,
            barrierColor: Colors.transparent,
            builder: (BuildContext context){
            return Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/drinks.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },);
        },
      ),
    );
  }
}
