
import 'package:flutter/material.dart';
import 'biomatricauth.dart';
class VerifyAadharSucess extends StatefulWidget {
  const VerifyAadharSucess({Key? key}) : super(key: key);
  @override
  State<VerifyAadharSucess> createState() => _VerifyAadharSucessState();
}
class _VerifyAadharSucessState extends State<VerifyAadharSucess> {
  // This is the entered code
  // It will be displayed in a Text widget
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
                    child: Image.asset("images/sucess.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Your Aadhar number',style: TextStyle(fontSize: 20,color: Color(0xFF40D322)),),
                ],
              ),
              RichText(
                textAlign: TextAlign.center,
                text:  TextSpan(
                  text: '859565856525 ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF40D322),),
                  children: <TextSpan>[
                    TextSpan(text: ' \n Sucessfully Verified',style: TextStyle(fontSize: 16, color: Color(0xFF40D322)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
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
                          builder: (context) =>
                          BiometricAuth(),
                              // Navigation_Widget(),
                        ));
                  },
                  child: Text(
                    "Continue ",
                    style: TextStyle(fontSize: 20,color: Colors.black, ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
