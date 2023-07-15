import 'package:banking/screen/widget/OtpInput.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'otpscreen.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  String? name;
  String? mobile;
  String? email;
  String? address;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController namectrl = TextEditingController();
  final TextEditingController mobilectrl = TextEditingController();
  final TextEditingController emailctrl = TextEditingController();
  final TextEditingController addressctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                      child: Text('Create Account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Name: '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextFormField(

                    onSaved: (newValue) => name = newValue!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please, enter name!';
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
                      hintText: "Enter your name",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Color(0xFFBDF9AE),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    controller: namectrl,
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(
                  height: 10,
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
                Padding(
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
                    controller: mobilectrl,
                    keyboardType: TextInputType.phone,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Email : '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextFormField(

                    onSaved: (newValue) => email = newValue!,
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
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
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Color(0xFFBDF9AE),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                    ),
                    controller: emailctrl,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Address: '),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TextFormField(

                    onSaved: (newValue) => address = newValue!,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please, enter Address!';
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
                      hintText: "Enter your Address",
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Color(0xFFBDF9AE),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                    ),
                    controller: addressctrl,
                    keyboardType: TextInputType.name,
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
                      "Create Account ",
                      style: TextStyle(fontSize: 20,color: Colors.black, ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
