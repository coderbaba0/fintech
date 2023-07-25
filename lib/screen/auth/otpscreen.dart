import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:banking/screen/auth/verifypan.dart';
import 'package:banking/screen/widget/OtpInput.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widget/custom_loader.dart';
import '../widget/randomnumbergentrate.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key, required this.mobile, required this.otp}) : super(key: key);
  final int mobile;
  final int otp;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}
class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  bool isloading =false;

  final interval = const Duration(seconds: 1);
  int otp=(RandomDigits.getInteger(4));
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
                  // IconButton(onPressed: (){
                  //   Navigator.pop(context);
                  // }, icon: Icon(Icons.arrow_back)),
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
                  text: 'We have sent verification code \n  to  your mobile number. \n+91'+widget.mobile.toString(),style: TextStyle(fontSize: 16,color: Theme.of(context).primaryColor),
                  children: <TextSpan>[

                    TextSpan(text: ' Edit',style: TextStyle(fontSize: 18,color: Colors.red,fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
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
                    if(_fieldOne.text.isEmpty || _fieldTwo.text.isEmpty || _fieldThree.text.isEmpty || _fieldFour.text.isEmpty){
                      Fluttertoast.showToast(
                        msg: 'Please Enter Your OTP Code',
                        backgroundColor: Colors.black,
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.CENTER,
                      );
                    }
                    else{

                      if(widget.otp.toString()==_fieldOne.text+_fieldTwo.text+_fieldThree.text+_fieldFour.text)
                      {
                        Fluttertoast.showToast(
                          msg: 'Successfully Verified!',
                          backgroundColor: Colors.black,
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                        );
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyPan(
                              ),
                            ));
                      }
                      else{
                        Fluttertoast.showToast(
                          msg: 'Somthing got wrong, Check your code!',
                          backgroundColor: Colors.black,
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                        );
                    }

                    }
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
                    setState(() {
                      isloading = true;
                    });
                    sendotp(otp,widget.mobile).then((value) => setState(() {
                      isloading = false;
                    }));
                    //resend otp code
                  },
                  child: Center(child: Text('Resend OTP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))),
              SizedBox(
                height:10,
              ),

              isloading?
              Container(width:40,height:40,child: ColorLoader3()):Container(),
            ],
          ),
        ),
      ),
    );
  }
  Future<dynamic> sendotp(int otp,int mobile) async {
    final response = await http.get(
      Uri.parse('https://www.fast2sms.com/dev/bulkV2?authorization=7NeL2D85Xt3sZpSnVoMkuqGIWigPaK1m4FjfcYx6hbdElRTJB9d84sSghX3jwnyWTp70GeFBLklQ9cbJ&route=otp&variables_values=$otp&flash=0&numbers=$mobile'),
    );
    var data = jsonDecode(response.body.toString());
    // print(data);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(
        msg: 'OTP Sent Successfully!',
        backgroundColor: Colors.black,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpScreen(mobile: mobile,otp: otp,),
          ));
      return data;
    } else {
      Fluttertoast.showToast(
        msg: 'Something went wrong!',
        backgroundColor: Colors.black,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
      );
      throw Exception('Failed to load ');
    }
  }
}
