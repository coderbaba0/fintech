
import 'package:banking/screen/auth/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'otpscreen.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String? mobile;
  final _formKey = GlobalKey<FormState>();
  TextEditingController mobilecontroller = TextEditingController();
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Login to your Account!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("  Welcome back to your account.",style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(
               height: 30,
             ),
             Padding(
               padding: const EdgeInsets.only(left: 30.0),
               child: Center(
                 child: Container(
                   height: 300,width: 300,
                   child: Image.asset("images/login.png"),
                 ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Mobile No : '),
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextFormField(
                    onSaved: (newValue) => mobile = newValue!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please, enter mobile!';
                      } else if (value.length > 10) {
                        return 'Mobile number must be equal to 10 digit.';
                      } else
                      {
                        return null;
                      }
                    },
                    style: TextStyle(color: Colors.black,),
                    cursorColor: Colors.black,
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelStyle:  TextStyle(color: Theme.of(context).primaryColor),
                      hintText: "Enter Mobile number",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Color(0xFFBDF9AE),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.smartphone,
                        color: Colors.black,
                      ),
                    ),
                    controller: mobilecontroller,
                    keyboardType: TextInputType.phone,
                  ),
                ),
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
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtpScreen(),
                          ));
                      //write submit function code
                    }
                  },
                  child: Text(
                    "Generate OTP",
                    style: TextStyle(fontSize: 20,color: Colors.black, ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            RichText(
              text:   TextSpan(
                text: 'Not Registered yet ? ',style: TextStyle(fontSize: 15,color: Theme.of(context).primaryColor),
                children: <TextSpan>[
                  TextSpan(text: ' Create Account !',style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(
                        ),
                      ));
                }
                ),
                ],
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
