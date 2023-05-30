// import 'package:flutter/material.dart';
//
// class AlertDialogDemo extends StatefulWidget {
//   const AlertDialogDemo({Key? key}) : super(key: key);
//
//   @override
//   State<AlertDialogDemo> createState() => _AlertDialogDemoState();
// }
//
// class _AlertDialogDemoState extends State<AlertDialogDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Alert Dialog"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             AlertDialog alert = AlertDialog(
//               backgroundColor: Colors.yellow.shade200,
//               contentPadding: const EdgeInsets.all(15.00),
//               title: const Text("Warning"),
//               content: Text("Are you sure?"),
//               actions: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text("Yes"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: Text("No"),
//                 ),
//               ],
//             );
//             showDialog(
//                 context: context,
//                 builder: (context) {
//                   return alert;
//                 });
//           },
//           child: Text("Show"),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({Key? key}) : super(key: key);

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AlertDialog(
                backgroundColor: Colors.yellow,
                contentPadding: EdgeInsets.all(15),
                title: (Text("Warning")),
                content: Text("Are You Sure"),
              );
            },
            child: Text("Show")),
      ),
    );
  }
}
