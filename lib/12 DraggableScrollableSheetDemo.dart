import 'package:flutter/material.dart';

class DraggableScrollableSheetDemo extends StatefulWidget {
  const DraggableScrollableSheetDemo({Key? key}) : super(key: key);

  @override
  State<DraggableScrollableSheetDemo> createState() =>
      _DraggableScrollableSheeatDemoState();
}

class _DraggableScrollableSheeatDemoState
    extends State<DraggableScrollableSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/jd.jpg'),
          Expanded(
            child: DraggableScrollableSheet(
              minChildSize: 0.1,
              maxChildSize: 0.8,
              snap: true,
              snapSizes: [0.3, 0.5],
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return ListView.builder(
                  controller: scrollController,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      color: Colors.blue.withOpacity(0.3),
                      // margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "index ${index}",
                        style: TextStyle(fontSize: 25),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
