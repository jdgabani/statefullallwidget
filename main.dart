import 'package:flutter/material.dart';

import 'AppbarDrawer.dart';
import 'Card-Widget.dart';
import 'Dialog-Widget.dart';
import 'CommonTextFiled.dart';
import 'DropDownButtonDemo.dart';
import 'EnterOtpWithTimerperiodic.dart';
import 'GridViewBuilder.dart';
import 'ListTile.dart';
import 'ListView-Separated.dart';
import 'ListViewBuilder.dart';
import 'Male-Fimale-Check-Buton.dart';
import 'Map-List.dart';
import 'MediaqueryWidget.dart';
import 'Package.dart';
import 'Page-Veiw.dart';
import 'Page-View-Like.dart';
import 'ShowModalBottomSheetWidget.dart';
import 'Slider.dart';
import 'BotomNavigetionBar.dart';
import 'TabBarExample.dart';
import 'TextFormFieldDemo.dart';
import 'TextGradientWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowModalBottomSheetWidget(),
    );
  }
}
