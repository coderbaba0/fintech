import 'dart:async';


import 'package:banking/screen/auth/verifypan.dart';
import 'package:banking/screen/widget/OtpInput.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}
class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 60;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }
  @override
  void initState() {
    startTimeout();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('OTP',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 300,width: 300,
                  child: Image.asset("images/otp.png"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Verification Code',style: TextStyle(fontSize: 22,),
                  )],
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.center,
                text:   TextSpan(
                  text: 'We have sent verification code \n  to  your mobile number. \n+91 8899599075 ',style: TextStyle(fontSize: 16,color: Theme.of(context).primaryColor),
                  children: <TextSpan>[

                    TextSpan(text: ' Edit',style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('bac');
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => SignupScreen(
                            //       ),
                            //     ));
                          }
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(child: Text(timerText)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(_fieldOne, true), // auto focus
                  OtpInput(_fieldTwo, false),
                  OtpInput(_fieldThree, false),
                  OtpInput(_fieldFour, false)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFB86BF3),
                          Color(0xFFBDF9AE),
                          Color(0xFFEBFDFF),
                          //add more colors
                        ]
                    ),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: <BoxShadow>[BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 5) //blur radius of shadow
                    ]
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VerifyPan(
                          ),
                        ));
                  },
                  child: Text(
                    "Verify OTP ",
                    style: TextStyle(fontSize: 20,color: Colors.black, ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: (){
                    //resend otp code
                  },
                  child: Center(child: Text('Resend OTP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))),

              SizedBox(
                height:2,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
