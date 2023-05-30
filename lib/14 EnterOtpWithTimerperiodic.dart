import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class EnterOtpWithTimerPeriodic extends StatefulWidget {
  const EnterOtpWithTimerPeriodic({Key? key}) : super(key: key);

  @override
  State<EnterOtpWithTimerPeriodic> createState() =>
      _EnterOtpWithTimerPeriodicState();
}

class _EnterOtpWithTimerPeriodicState extends State<EnterOtpWithTimerPeriodic> {
  @override
int second = 60;
bool recent= false;

void timerdemo(){
Timer timer = Timer.periodic(Duration(seconds: 1),(timer) {
  setState(() {
  });
  second--;
  if(second==0){
    timer.cancel();
    second=60;
    recent=true;
    setState(() {

    });
  }
});
}
  @override
  void initState() {
    timerdemo();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Otp with Timerperiodic"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text(
              "Enter Otp",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Enter the 6 digit verification sent to"),
          SizedBox(height: 4,),
          Text("+919979396888"),
          SizedBox(height: 70,),
          OtpTextField(
            numberOfFields: 4,
            showFieldAsBox: true,
            onCodeChanged: (String code){
            },
            onSubmit: (String verificationCode){
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text("Verification code"),
                  content: Text('Code entered is $verificationCode'),
                );
              },);
            },
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Resend Otp in"),
              SizedBox(width: 3),
              Text("${second}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),),
              Text("second"),
            ],
          ),
          SizedBox(height: 15,),
          recent?ElevatedButton(
            onPressed: () {
              setState(() {
              });
              recent=false;
              timerdemo();
            },
            child: Text("Resend code",
            ),
          ):
          SizedBox(),
        ],
      ),
      );
  }
}
