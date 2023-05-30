import 'package:flutter/material.dart';

class Cardhomewidget extends StatelessWidget {
  Cardhomewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children:
                List.generate(
                  10, (index) => Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 20,),
                  child: Card(
                    shadowColor: Colors.green,
                    color: Colors.teal,
                    elevation: 10,
                    child: Center(
                      child: Text(
                        "J.D Gabani",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(color: Colors.black54,blurRadius: 10,offset: Offset(4,5))]
                        ),
                      ),
                    ),
                  ),
                ),)

            ),
          ),
        ),
      ),
    );
  }
}
