import 'package:flutter/material.dart';

class DateRangePickerDemo extends StatefulWidget {
  const DateRangePickerDemo({Key? key}) : super(key: key);

  @override
  State<DateRangePickerDemo> createState() => _DateRangePickerDemoState();
}

class _DateRangePickerDemoState extends State<DateRangePickerDemo> {
  var data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showDateRangePicker(
            context: context,
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
          ).then(
            (value) {
              setState(() {});
              data = value!.duration.inDays;
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "${data} Days",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
