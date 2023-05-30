import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatefulWidget {
  const ListViewBuilderDemo({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}

class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  List color = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.orangeAccent,
    Colors.indigo,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.orangeAccent,
    Colors.indigo,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              physics: BouncingScrollPhysics(),
              itemCount: color.length,
              itemBuilder: (context, index) {
                return Container(
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(10),
                    color: color[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class ListViewBuilderDemo extends StatefulWidget {
//   const ListViewBuilderDemo({Key? key}) : super(key: key);
//
//   @override
//   State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
// }
//
// class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListView.builder(
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     height: 100,
//                     width: 300,
//                     transform: Matrix4.rotationZ(25),
//                     margin: EdgeInsets.symmetric(vertical: 10),
//                     color: Colors.green,
//                     child: Row(
//                       children: [
//                         Text(
//                           "jjjfjfj",
//                           style: TextStyle(letterSpacing: 10, wordSpacing: 10),
//                         ),
//                         Text("hghghgh"),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
